class HomesController < ApplicationController
  def index
    @items = Item.all
    @inventory = @items.count
  end

end
