class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def edit
    @pizza = Pizza.find(params[:id])
  end

  def update
    @pizza = Pizza.find(params[:id])

    @pizza.update
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address)
  end
end
