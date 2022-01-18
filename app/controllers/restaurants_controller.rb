class RestaurantsController < ApplicationController
   before_action :find_param, only: [:show, :edit, :update, :destroy]

  def index
    @restaurants = Restaurant.all
  end

  def show; end

  def new
    @restaurant = Restaurant.new
  end

  def create
    Restaurant.create(restaurant_params)
  end

  def update
    @restaurant.update(restaurant_params)
    # redirect_to tasks_path
  end

  def edit
  end

  def destroy
    @restaurant.destroy
    # redirect_to tasks_path
  end

  private

  def restaurant_params
    params.required(:restaurant).permit(:name, :address)
  end

  def find_param
    @restaurant = Restaurant.find(params[:id])
  end
end
