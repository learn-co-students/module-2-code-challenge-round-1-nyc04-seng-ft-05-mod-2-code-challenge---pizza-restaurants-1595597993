class Pizza < ApplicationRecord
    has_many :restaurant_pizzas
    has_many :restaurants, through: :restaurant_pizzas
    validates :name, presence: true
    validates :name, uniqueness: true
    validates :ingredients, presence: true
    

    def restaurants=(id)
        RestaurantPizza.create(pizza_id:self.id,restaurant_id:id)
    end

end
