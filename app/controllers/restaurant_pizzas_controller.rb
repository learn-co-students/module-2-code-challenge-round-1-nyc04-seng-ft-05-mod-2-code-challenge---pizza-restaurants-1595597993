class RestaurantPizzasController < ApplicationController
  def new
    @restaurant_pizza = RestaurantPizza.new()
  end

  def create
    @restaurant_pizza = RestaurantPizza.create(restaurant_pizza_params)
    if @restaurant_pizza.valid?
      redirect_to @restaurant_pizza.restaurant
    else 
      redirect_to new_restaurant_pizza_path
    end
  end



  private
  
  def restaurant_pizza_params
    params.require(:restaurant_pizza).permit(:restaurant_id, :pizza_id)
  end
end
