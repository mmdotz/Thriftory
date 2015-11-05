class HomesController < ApplicationController
  def index
    @inventory = current_user.items
  end

end
