class HomesController < ApplicationController
  def index
    @inventory = Item.all.count
  end

end
