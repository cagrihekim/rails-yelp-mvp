class ReviewsController < ApplicationController
  # def new
  # @restaurant = Restaurant.find(params[:restaurant_id])
  # @review = Review.new
  # end

  def create
    raise
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new(validate_params)
    @review.restaurant = @restaurant
    if @review.save
      redirect_to @restaurant
    end
    render 'reviews/create'
  end

  private

  def validate_params
    params.required(:review).permit(:rating, :content)
  end
end
