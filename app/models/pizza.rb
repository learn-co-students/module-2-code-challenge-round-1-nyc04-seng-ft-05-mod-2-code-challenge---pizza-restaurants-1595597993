class Pizza < ApplicationRecord
  has_many :restaurant_pizzas
  has_many :restaurants, through: :restaurant_pizzas
  validates :name , presence: true #{message: "must have a name"}
  validates :name ,uniqueness: true #{message: "Name already taken"}
  validates :ingredients , presence: true




end
