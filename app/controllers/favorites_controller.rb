class FavoritesController < ApplicationController
  before_action :set_restaurant, only: [:create, :destroy]

  def create
    @favorite = Favorite.new(
      user_id: current_user.id,
      restaurant_id: params[:restaurant_id]
    )
    @favorite.save
    redirect_to @restaurant
  end

  def destroy
    @favorite = Favorite.find(params[:id])
    @favorite.delete
    redirect_to @restaurant
  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def favorite_params
    params.require(:favorite).permits(
      :user_id,
      :restaurant_id
    )
  end

end
