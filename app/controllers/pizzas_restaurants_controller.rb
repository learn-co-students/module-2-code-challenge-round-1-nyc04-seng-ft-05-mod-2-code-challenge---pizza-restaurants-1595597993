class PizzasRestaurants < ApplicationController
    def index
        @pizzas_restaurants = PizzasRestaurant.all 
    end
    
end