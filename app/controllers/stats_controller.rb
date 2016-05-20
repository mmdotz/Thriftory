class StatsController < ApplicationController
  def index
    @items = current_user.items

    #this doesn't work because the item object is returned where the sum should be, rewrite
    @payment_by_category = CalculateIncome.new(current_user).items_by_category

    @furniture_expense = Category.find(1).finances.map{ |f| f.item_total_outlay }.sum
    @clothing_expense = Category.find(2).finances.map{ |f| f.item_total_outlay }.sum
    @household_expense = Category.find(3).finances.map{ |f| f.item_total_outlay }.sum
    @other_expense = Category.find(4).finances.map{ |f| f.item_total_outlay }.sum
  end
end
