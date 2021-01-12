class ReviewsController < ApplicationController
  def new
  @restaurant = Restaurant.find(params[:restaurant_id])
  @review = Review.new
  end

  def create
    @review = Review.new(validate_params)
  end

  private

  def validate_params
    params.required(:review).permit(:rating, :content)
  end
end
