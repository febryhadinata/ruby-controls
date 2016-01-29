class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_user

  def current_user
    # ... remove session if can't found any user id
    @user = User.find_by(id: session[:user_id]) if session[:user_id]
    session[:user_id] = nil unless @user

    # ... set current user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def require_user
    redirect_to '/login' unless current_user
  end

  def require_admin
    redirect_to login_url unless current_user.admin?
  end

end
