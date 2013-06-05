class FavoritesController < ApplicationController
  def index
    user = User.find(params[:user_id])
    @favorites = user.favorites
    render json: @favorites
  end

  def create
    favorite = Favorite.new(user_id: params[:user_id], contact_id: params[:contact_id])
    if favorite.save
      render :json => favorite
    else
      render :json => favorite.errors, status: :unprocessable_entity
    end
  end

  def destroy
    favorite = Favorite.where(user_id: params[:user_id], contact_id: params[:contact_id]).destroy_all
    render :json => {:status => "ok"}
  end

end
