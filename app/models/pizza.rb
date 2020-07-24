class Pizza < ApplicationRecord
    has_many :restaurant_pizzas
    has_many :resturants, through: :restaurant_pizzas 
    validates :name, uniqueness: true
    validates :name, presence: true
    validates :ingredients, presence: true
end
