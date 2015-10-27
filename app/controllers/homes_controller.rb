class HomesController < ApplicationController
  def index
    @inventory = Item.all.count
    # @total_week_items = Item.where(created_at: (Time.now..Time.week))
  end


end
