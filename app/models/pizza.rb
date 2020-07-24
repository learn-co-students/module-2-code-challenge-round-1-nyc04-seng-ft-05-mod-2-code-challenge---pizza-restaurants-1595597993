class Pizza < ApplicationRecord
has_many :restaurants
has_many :restaurants, through: :restaurantpizza
end

