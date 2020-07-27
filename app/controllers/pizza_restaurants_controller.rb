class PizzaRestaurantsController < ApplicationController
  
    def new
        @pizza_restaurant = PizzaRestaurant.new
    end

    def create
        @pizza_restaurant = PizzaRestaurant.create(pizza_restaurant_params)
        redirect_to pizzas_path
    end




    private
    def pizza_restaurant_params
        params.require(:pizza_restaurant).permit(:pizza_id,:restaurant_id)
    end
end

