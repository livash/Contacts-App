class UsersController < ApplicationController

  def index
    @users = User.all
    render json: @users
  end

  def show
    #check that is not nill based on :id
    user = User.find(params[:id])
    render json: user
  end

  def create
    user = User.new(params[:user])
    if user.save
      render :json => user
    else
      render :json => user.errors, status: :unprocessable_entity
    end
  end

  def update
    #check that is not nill based on :id
    user = User.find(params[:id])
    user.update_attributes(params["user"])
    render json: user
  end

end
