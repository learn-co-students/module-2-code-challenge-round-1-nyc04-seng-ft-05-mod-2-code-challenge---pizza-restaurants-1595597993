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

  # def update

  # end
  
  private
  def restaurant_params
    params.require(:restaurant).permit(:name, :address)
  end


end
