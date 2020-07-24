class Pizza < ApplicationRecord
    has_many :restaurant_pizzas
    has_many :restuarants, through: :restaurant_pizzas
    validates :name, presence: true
    validates :ingredients, presence: true
    def list_ingredients
        self.ingredients.split(" ")
       
    end
end
