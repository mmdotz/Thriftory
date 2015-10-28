class HomesController < ApplicationController
  def index
    @items = Item.all
    @inventory = @items.count
    @item = Item.last
  end

end
