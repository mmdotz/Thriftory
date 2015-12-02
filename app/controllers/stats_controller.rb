class StatsController < ApplicationController
  def index
    @items = current_user.items
    @inventory = current_user.items.count

    #correct
    @moneyin = current_user.finances.sum("buyer_pmt")
    @moneyout = current_user.finances.all.map { |finance| finance.item_total_outlay }.sum

    #this needs be be filtered thru the current_user, showing db totals
    @payment_by_category = Hash[Category.all.map(&:finances).map { |fin_array| fin_array.map(&:buyer_pmt).sum
    }.map.with_index { |amt, index| [Category.find(index + 1).name, amt] }]

    @furniture_expense = Category.find(1).finances.map{ |f| f.item_total_outlay }.sum
    @clothing_expense = Category.find(2).finances.map{ |f| f.item_total_outlay }.sum
    @household_expense = Category.find(3).finances.map{ |f| f.item_total_outlay }.sum
    @other_expense = Category.find(4).finances.map{ |f| f.item_total_outlay }.sum

  end
end
