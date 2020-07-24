class RestaurantPizzasController < ApplicationController

    def new
        @restaurant_pizza = RestaurantPizza.new
    end 

   
end
