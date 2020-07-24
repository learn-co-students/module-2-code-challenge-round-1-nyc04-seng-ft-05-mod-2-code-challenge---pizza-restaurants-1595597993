class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  private
  def restaurant_params
    params.require(:restaurant).permit(:name, :address)
  end
end

#each pizza in the list should link that Pizza's show page.
#can't test it because there are no links, tried to create in seeds but didn't work 
