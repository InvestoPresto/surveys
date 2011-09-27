class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :current_user

  private

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def authorize
    redirect_to signin_path, :notice => "Please login via Facebook/Google/Twitter/Yahoo" unless current_user
  end

  def authorize_admin
    redirect_to :back, :notice => "Admin only" unless current_user.id == 1
  end
end
