class ApplicationController < ActionController::Base
  protect_from_forgery

  def current_user
    @current_user ||= User.where(params[:token])
  end

  def authenticate_user
    if logged_in?
    else
      render :json => {:status => "YOu are not authorized"}
    end
  end

  def logged_in?

  end


end
