class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def authenticate_user!
    redirect_to(new_user_session_path, alert: "Sign in before proceeding") unless user_signed_in?
  end

  def user_signed_in?
    session[:user_id]
  end
  helper_method :user_signed_in?

  def current_user
    @current_user ||= User.find(session[:user_id])
  end
  helper_method :current_user 
end
