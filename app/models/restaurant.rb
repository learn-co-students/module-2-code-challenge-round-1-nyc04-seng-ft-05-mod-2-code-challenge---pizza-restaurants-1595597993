class Restaurant < ApplicationRecord
  has_many :resturantpizza
  has_many :pizza, through: :resturantpizza
end

