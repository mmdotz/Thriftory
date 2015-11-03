class StatsController < ApplicationController
  def index
    @items = Item.all
    @inventory = @items.count
    @item = Item.last
    @finances = Finance.all
  end

  def show
  end
end
