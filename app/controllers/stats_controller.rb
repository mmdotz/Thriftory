class StatsController < ApplicationController
  def index
    @items = Item.all
    @inventory = @items.count
    @item = Item.last
  end
  
  def show
  end
end
