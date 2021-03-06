class FinancesController < ApplicationController
  before_action :set_finance, only: [:show, :edit, :update, :destroy]

  def index
    @finances = current_user.finances
  end

  def new
  end

  def edit
  end

  def create
    @finance = Finance.new(finance_params)

    respond_to do |format|
      if @finance.save
        format.html { redirect_to @finance, notice: 'Finance was successfully created.' }
        format.json { render :show, status: :created, location: @finance }
      else
        format.html { render :new }
        format.json { render json: @finance.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @finance.update(finance_params)
        format.html { redirect_to @finance, notice: 'Finance was successfully updated.' }
        format.json { render :show, status: :ok, location: @finance }
      else
        format.html { render :edit }
        format.json { render json: @finance.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @finance.destroy
    respond_to do |format|
      format.html { redirect_to finances_url, notice: 'Finance was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_finance
      @finance = Finance.find(params[:id])
    end

    def finance_params
      params.require(:finance).permit(:procure_cost, :shipping_cost, :pre_sale_notes, :pre_sale_cost, :buyer_pmt, :item_id)
    end
end
