class Pizza < ApplicationRecord
  has_many :restaurant_pizzas
  has_many :restaurants, through: :restaurant_pizzas
  accepts_nested_attributes_for :restaurant_pizzas
  
  validates :name, presence: true
  validates :name, uniqueness: true 
  validates :ingredients, presence: true

  def num_restaurants
    self.restaurants.count
  end
end
