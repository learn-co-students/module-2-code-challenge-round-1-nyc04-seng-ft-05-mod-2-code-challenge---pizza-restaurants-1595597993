class RestaurantsController < ApplicationController
  before_action :find_restaurant, only: [:show, :edit]

  def index
    @restaurants = Restaurant.all
  end

  def show
    #find_restaurant
  end

  def edit
    #find_restaurant
    render :edit
  end

  def update
    @res
  end

  private
  def find_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

end
