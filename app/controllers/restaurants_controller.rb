class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def edit
    @restaurant = Restaurant.find(params[:id])
  end

  def update
    restaurant = Restaurant.find(params[:id])
    if restaurant.update(restaurant_params)
      redirect_to restaurant_path(restaurant)
    else
      render :restaurant_pizza_path
    end
  end

  private
  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :pizza_ids => [])
  end
   
end
