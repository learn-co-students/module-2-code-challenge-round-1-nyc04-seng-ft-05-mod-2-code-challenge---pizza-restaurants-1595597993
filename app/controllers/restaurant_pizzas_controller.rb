class RestaurantPizzasController < ApplicationController

    def new
        @restaurant_pizzas = RestaurantPizza.new()
    end
    def create
        @restaurant_pizzas = RestaurantPizza.Create(restaurant_pizza_params)
    end

    private
    def restaurant_pizza_params
        params.require(:restaurant_pizza).permit(:pizza_id, :restaurant_id)
    end
end
