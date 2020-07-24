class RestaurantPizza < ApplicationRecord
    belongs_to :resturant
    belongs_to :pizza
end