class SearchController < ApplicationController
  
  def search
    if params[:q].nil?
      @items = []
    else
      @items = Items.search(params[:q])
    end
  end

end
