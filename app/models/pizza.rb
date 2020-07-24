class Pizza < ApplicationRecord
  has_many :restaurant_pizzas
  has_many :restaurants, through: :restaurant_pizzas

  validates :name, presence: true 
  validates :name, uniqueness: true
  validates :ingredients, presence: true

  def number_of_restaurants
    self.restaurants.count.to_i
  end
  
end
