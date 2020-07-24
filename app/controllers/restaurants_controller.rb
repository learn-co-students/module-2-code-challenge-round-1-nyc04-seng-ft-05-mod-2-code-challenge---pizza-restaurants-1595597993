class RestaurantsController < ApplicationController
  before_action :find_restaurant, except: [:index, :new, :create]

  def index
    @restaurants = Restaurant.all
  end

  def show
  end

  def new
    @restaurant = Restaurant.new
  end

  def edit
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      flash[:success] = "Restaurant successfully created"
      redirect_to @restaurant
    else
      flash[:error] = "Something went wrong"
      render 'show'
    end
  end

  def update
    if @restaurant.update_attributes(restaurant_params)
      flash[:success] = "Restaurant was successfully updated"
      redirect_to @restaurant
    else
      flash[:error] = "Something went wrong"
      render 'show'
    end
  end

  def destroy
    if @restaurant.destroy
      flash[:success] = "Restaurant was successfully deleted"
      redirect_to @restaurants_path
    else
      flash[:error] = "Something went wrong"
      redirect_to @restaurants_path
    end
  end

  private

  def find_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def restaurant_params
    params.require(:restaurant).permit(:name, :address)
  end

end
