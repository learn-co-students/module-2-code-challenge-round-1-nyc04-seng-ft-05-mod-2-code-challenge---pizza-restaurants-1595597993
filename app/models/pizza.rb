class Pizza < ApplicationRecord
    has_many :pizza_restaurants 
    has_many :restaurants, through: :pizza_restaurants

    validates :name, presence: true 
    validates :ingredients, presence: true
    #not sure if I did that right? :)
end
