class Pizza < ApplicationRecord
  has_many :restaurant_pizzas
  has_many :restaurants, through: :restaurant_pizzas
  accepts_nested_attributes_for :restaurants

  validates :name, presence: true, uniqueness: true
  validates :ingredients, presence: true
end
