class SessionsController < ApplicationController

  def create
    user = User.where(:email => params[:email], :password => params[:password])
    new_token = make_token
    user.token = new_token
    user.save!
    render :json => {:token => "#{new_token}"}
  end

  def destroy
    user = User.where(:email => params[:email], :password => params[:password], :token => params[:token])
    user.token = ''
    user.save!
  end

  def make_token
    SecureRandom.base64
  end

end
