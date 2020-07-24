class RestaurantPizzasController < ApplicationController
    def show
        @restaurant_pizza=RestaurantPizza.find(params[:id])
    end
end
