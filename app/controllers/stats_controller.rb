class StatsController < ApplicationController
  def index
    @items = Item.all
    @inventory = @items.count
    @item = Item.last
    @finances = Finance.all

    @moneyin = Finance.sum("buyer_pmt")
    @moneyout = Finance.all.map { |finance| finance.item_total_outlay }.sum

    @furniture_income = Category.find(1).finances.map{ |f| f.procure_cost }.sum
    @clothing_income = Category.find(2).finances.map{ |f| f.procure_cost }.sum
    @household_income = Category.find(3).finances.map{ |f| f.procure_cost }.sum
    @other_income = Category.find(4).finances.map{ |f| f.procure_cost }.sum


    @payment_by_category = Hash[Category.all.map(&:finances).map { |fin_array| fin_array.map(&:buyer_pmt).sum
    }.map.with_index { |amt, index| [Category.find(index + 1).name, amt] }]
  end
end
