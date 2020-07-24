class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    byebug
  end

  def new
    @restaurant = Restaurant.new
  end

  def create

    @restaurant = Restaurant.new(restaurant_params)

    respond_to do |format|
      if @restaurant.save
        format.html { redirect_to @restaurant, notice: 'restaurant was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @restaurant.update(restaurant_params)
        format.html { redirect_to @restaurant, notice: 'restaurant was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @restaurant.destroy
    respond_to do |format|
      format.html { redirect_to restaurants_url, notice: 'restaurant was successfully destroyed.' }
    end
  end

  private
    def set_restaurant
      @restaurant = restaurant.find(params[:id])
    end

    def restaurant_params
      params.require(:restaurant).permit(:name, :address)
    end

end
