class ApplicationController < ActionController::Base
  protect_from_forgery

  def current_user
    @current_user ||= generate_access_token
  end

  def generate_access_token
    @token = SecureRandom.base64
  end

end
