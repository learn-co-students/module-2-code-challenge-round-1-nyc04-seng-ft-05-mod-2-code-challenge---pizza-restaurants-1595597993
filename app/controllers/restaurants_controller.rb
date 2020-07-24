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
    @restaurant = Restaurant.find(params[:id])
    @restaurant.update(rest_params)
    redirect_to restauarant_path(@restaurant)
  end

  private
    def rest_params
      params.require(:restaurant).permit(:name, :address)
    end

end #end of class
