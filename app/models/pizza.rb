class Pizza < ApplicationRecord
    has_many :restaurant_pizzas
    has_many :pizzas, through: :restaurants
    # validate :name, uniqueness: true
    # validate :ingredients, uniqueness: true

    # def pizza_count

    # end
end
