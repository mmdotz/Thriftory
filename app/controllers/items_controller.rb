class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :edit, :update, :destroy]
  after_action :remove_cache

  def index
    @items = current_user.items
    #in Item model, created helper method to tell attachment method which object
    #we are passing in for refile upload, otherwise returned JSON objects on :back
    respond_to do |format|
      format.html do
        response.headers["Cache-Control"] = "no-cache"

        render :index
      end
      format.json do
        response.headers["Cache-Control"] = "no-cache"

        render json: @items.to_json(include: :source, methods: :photo_url)
      end
      format.csv {send_data @items.to_csv}
    end
  end

  def show
    @item = Item.find(params[:id])
  end

  def new
    @item       = Item.new
    @item.finances.new
    @categories = Category.all
    @subcat1s   = []
    @subcat2s   = []
    @sources = current_user.sources
  end

  def update_subcat1
    category = Category.find(params[:category_id])
    @subcat1s = category.subcat1s.map{ |x| [x.name, x.id] }.insert(0, "Select a 1st Subcategory")
  end

  def update_subcat2
    subcat1 = Subcat1.find(params[:subcat1_id])
    @subcat2s = subcat1.subcat2s.map{ |z| [z.name, z.id] }.insert(0, "Select a 2nd Subcategory")
  end

  def edit
    @categories = Category.all
    @subcat1s   = @item.subcat2.subcat1.category.subcat1s
    @subcat2s   = @item.subcat2.subcat1.subcat2s
    @sources = current_user.sources
  end

  def create
    @item = Item.new(item_params)
    respond_to do |format|
      if @item.save
        format.html { redirect_to item_path(@item), notice: 'Item was successfully created.' }
        format.json { render :show, status: :created, location: @items }
      else
        format.html { render :new }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @item.update(item_params)
        format.html { redirect_to @item, notice: 'Item was successfully updated.' }
        format.json { render :show, status: :ok, location: @item }
      else
        format.html { render :edit }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @item.destroy
    respond_to do |format|
      format.html { redirect_to items_path, notice: 'Item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_item
      @item = Item.find(params[:id])
    end

    def item_params
      params.require(:item).permit(:category_id, :subcat1_id, :subcat2_id,
      :description, :quantity, :shipping, :storage_loc, :status, :source_id, :condition, :status,
      finances_attributes: [:id,:procure_cost, :shipping_cost, :pre_sale_cost, :buyer_pmt] )
    end

    #Force Rails to tell browser to not cache responses from this controller - fix bug
    #using back button produced items in JSON
    def remove_cache
      response.headers["Cache-Control"] = "no-cache, no-store, max-age=0, must-revalidate"
      response.headers["Pragma"] = "no-cache"
      response.headers["Expires"] = "Fri, 01 Jan 1990 00:00:00 GMT"
    end

end
