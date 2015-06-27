class RestaurantsController < ApplicationController
  before_action :set_restaurant, { only: [:show, :edit, :update]}
  def index
    @restaurants = Restaurant.all
  end

  def show
  end

  def edit
  end

  def update
    @restaurant.update(restaurant_params)
    if @restaurant.save
      redirect_to @restaurant
    else
      render :edit
    end
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def restaurant_params
    params.require(:restaurant).permit(
      :name,
      :tel,
      :address,
      :url,
    )
  end

end
