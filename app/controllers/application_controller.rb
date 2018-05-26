class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  private

  def logged_in?
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def logged_name
  	User.find(session[:user_id]).firstname
  end

  helper_method :logged_in?, :logged_name

end
