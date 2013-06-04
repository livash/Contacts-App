class FavoritesController < ApplicationController
  def index
    @favorite = Favorite.all
    render json: @favorites
  end

  def show
    favorite = Favorite.find(params[:id])
    render :json => favorite
  end

  def create
    favorite = Favorite.new(params[:favorite])
    if favorite.save
      render :json => favorite
    else
      render :json => favorite.errors, status: :unprocessable_entity
    end
  end

  def update

  end
end
