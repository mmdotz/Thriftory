class HomesController < ApplicationController
  def index
    @inventory = Item.all.count
  end

  # def formatted_start_time
  #   Time.now.strftime("%B %d, %Y @ %I:%M%P")
  # end

end
