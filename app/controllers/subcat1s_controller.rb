class Subcat1sController < ApplicationController
  before_action :set_subcat1, only: [:show, :edit, :update, :destroy]

  # GET /subcat1s
  # GET /subcat1s.json
  def index
    @subcat1s = Subcat1.all
  end

  # GET /subcat1s/new
  def new
    @subcat1 = Subcat1.new

  end

  # GET /subcat1s/1/edit
  def edit
  end

  # POST /subcat1s
  # POST /subcat1s.json
  def create
    @subcat1 = Subcat1.new(subcat1_params)

    respond_to do |format|
      if @subcat1.save
        format.html { redirect_to @subcat1, notice: 'Subcat1 was successfully created.' }
        format.json { render :show, status: :created, location: @subcat1 }
      else
        format.html { render :new }
        format.json { render json: @subcat1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /subcat1s/1
  # PATCH/PUT /subcat1s/1.json
  def update
    respond_to do |format|
      if @subcat1.update(subcat1_params)
        format.html { redirect_to @subcat1, notice: 'Subcat1 was successfully updated.' }
        format.json { render :show, status: :ok, location: @subcat1 }
      else
        format.html { render :edit }
        format.json { render json: @subcat1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /subcat1s/1
  # DELETE /subcat1s/1.json
  def destroy
    @subcat1.destroy
    respond_to do |format|
      format.html { redirect_to subcat1s_url, notice: 'Subcat1 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_subcat1
      @subcat1 = Subcat1.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def subcat1_params
      params.require(:subcat1).permit(:name, :category_id)
    end
end
