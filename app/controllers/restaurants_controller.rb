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
      redirect_to restaurant
    else 
      redirect_to edit_restaurant_path
    end
  end

  # To create association for each of the Pizzas selected in Restaurant Update Form:
  # define setter pizzas_ids= in Restaurant model
  # add pizza_ids to restaurant_params
  def restaurant_params
    params.require(:restaurant).permit(:name, :address, pizza_ids: [])
  end
   
end