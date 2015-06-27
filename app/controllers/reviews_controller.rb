class ReviewsController < ApplicationController
  before_action :set_restaurant, only: [:new, :create]

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(
      body: review_params[:body],
      score: review_params[:score],
      user_id: current_user.id,
      restaurant_id: params[:restaurant_id]
    )
    if @review.save
      redirect_to @restaurant
    else
      render :new
    end
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def review_params
    params.require(:review).permit(
      :score,
      :body
    )
  end

end
