class RestaurantsController < ApplicationController
  before_action :find_restaurant, only: [:show, :edit, :update, :destroy]

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(validate_params)
    @restaurant.save

    redirect_to restaurant_path(@restaurant)
  end

  def update
    @restaurant.update(validate_params)

    redurect_to restaurant_path(@restaurant)
  end

  def edit
  end

  def destroy
    @restaurant.destroy

    redirect_to restaurant_path
  end

  def index
    @restaurants = Restaurant.all
  end

  def show
  end

  private

  def validate_params
    params.required(:restaurant).permit(:name, :adress, :phone_number, :category)
  end

  def find_restaurant
    @restaurant = Restaurant.find(params[:id])
  end
end
