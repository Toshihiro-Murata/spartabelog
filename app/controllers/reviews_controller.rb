class ReviewsController < ApplicationController
  before_action :set_review, only: [:edit, :update]
  before_action :set_restaurant, only: [:new, :create, :edit, :update]

  def new
    @review = Review.new
  end

  def edit
  end

  def update
    if @review.update(review_params)
      redirect_to @restaurant
    else
      render :edit
    end
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

  def set_review
    @review = Review.find(params[:id])
  end

  def review_params
    params.require(:review).permit(
      :score,
      :body
    )
  end

end
