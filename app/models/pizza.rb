class Pizza < ApplicationRecord
    has_many :restaurant_pizzas
    has_many :restaurants, through: :restaurant_pizzas

    validates :name, presence: true, uniqueness: true
    validates :ingredients, presence: true

    def restaurant_id=(id)
        self.restaurants << Restaurant.find(id)
    end

end
