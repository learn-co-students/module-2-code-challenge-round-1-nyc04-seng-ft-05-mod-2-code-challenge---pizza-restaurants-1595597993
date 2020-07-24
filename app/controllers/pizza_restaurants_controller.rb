class PizzaRestaurantsController < ApplicationController
 
      def index

        @pizza_restaurants = Pizza_Restaurant.all
      end
    def new
        @pizzarestaurant = Pizza_Restaurant.new
    end

    
end
