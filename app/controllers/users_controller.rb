class UsersController < ApplicationController
  def index
    users = User.all

    render :json => users
  end

  def create
    user = User.new(params[:user])
    if user.save
      render :json => user
    else
      render :json => user.errors, status: :unprocessable_entity
    end
  end

  def show
    render :text => "I'm in the show action"
  end

  def destroy
    user = User.find(params[:id])
    user.destroy
    render json: user
  end
end
