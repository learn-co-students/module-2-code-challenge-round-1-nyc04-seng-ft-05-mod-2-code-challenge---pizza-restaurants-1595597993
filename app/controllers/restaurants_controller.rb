class RestaurantsController < ApplicationController
  before_action :set_restaurant
  
  def index
  end

  def show
  end

  def edit
  end

  def update
    @restaurant.assign_attributes(restaurant_params)
    @restaurant.save ? (redirect_to @restaurant) : (render :edit)
  end

  private

  def set_restaurant
    params[:id].nil? ? (@restaurants = Restaurant.all) : (@restaurant = Restaurant.find(params[:id]))
  end

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, pizza_ids: [])
  end

end
