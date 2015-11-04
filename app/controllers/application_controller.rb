class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  # before_action :authenticate_user

  def authenticate_user
    unless user_logged_in?
      redirect_to login_path
    end
  end

  def current_user
    if user_logged_in?
     User.find(session[:logged_in_users_id])
    end
  end
  helper_method :current_user

  def user_logged_in?
    session[:logged_in_users_id].present?
  end

  def total_week_items
    Item.where("created_at > ?", Time.now-7.days).count
  end

  helper_method :user_logged_in?
  helper_method :total_week_items
  helper_method :item_profit

end
