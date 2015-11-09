class Subcat2sController < ApplicationController
  before_action :set_subcat2, only: [:show, :edit, :update, :destroy]

  # GET /subcat2s
  # GET /subcat2s.json
  def index
    @subcat2s = Subcat2.all
  end

  # GET /subcat2s/new
  def new
    @subcat2 = Subcat2.new
  end

  # GET /subcat2s/1/edit
  def edit
  end

  # POST /subcat2s
  # POST /subcat2s.json
  def create
    @subcat2 = Subcat2.new(subcat2_params)

    respond_to do |format|
      if @subcat2.save
        format.html { redirect_to @subcat2, notice: 'Subcat2 was successfully created.' }
        format.json { render :show, status: :created, location: @subcat2 }
      else
        format.html { render :new }
        format.json { render json: @subcat2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /subcat2s/1
  # PATCH/PUT /subcat2s/1.json
  def update
    respond_to do |format|
      if @subcat2.update(subcat2_params)
        format.html { redirect_to @subcat2, notice: 'Subcat2 was successfully updated.' }
        format.json { render :show, status: :ok, location: @subcat2 }
      else
        format.html { render :edit }
        format.json { render json: @subcat2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /subcat2s/1
  # DELETE /subcat2s/1.json
  def destroy
    @subcat2.destroy
    respond_to do |format|
      format.html { redirect_to subcat2s_url, notice: 'Subcat2 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_subcat2
      @subcat2 = Subcat2.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def subcat2_params
      params.require(:subcat2).permit(:name, :subcat1_id)
    end
end
