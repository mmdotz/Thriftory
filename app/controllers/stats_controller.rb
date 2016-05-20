class StatsController < ApplicationController
  def index
    @items = current_user.items

    @income_by_category = CalculateIncome.new(current_user).income_by_category
    @expense_by_category = CalculateIncome.new(current_user).expense_by_category
  end
  
end
