class ApplicationController < ActionController::Base
  protect_from_forgery

  def current_user
    @current_user ||= User.where(params[:token])
  end

  def authenticate_user
    unless logged_in?
      render :json => {:status => "You are not authorized"}
    end
  end

  def logged_in?
    params[:token] and current_user
  end


end
