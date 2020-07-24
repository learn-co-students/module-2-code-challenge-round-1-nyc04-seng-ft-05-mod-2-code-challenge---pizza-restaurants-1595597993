class RestaurantsController < ApplicationController
  before_action :find_res_id, only: [:show,:edit,:update,:destroy]
  def index
    @restaurants = Restaurant.all
  end

  def show
  end

  def edit

  end

  def update
    @restaurant.update(restaurant_params)
    redirect_to restaurant_path(@restaurant)
  end




  private

  def restaurant_params
    params.require(:restaurant).permit(:name,:address,pizza_ids:[])
  end

  def find_res_id
    @restaurant=Restaurant.find(params[:id])
  end
end
