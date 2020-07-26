class Pizza < ApplicationRecord
    has_many :restaurant_pizzas, dependent: :destroy
    has_many :restaurants, through: :restaurant_pizzas

    # Add validations:
    validates :name, presence: true, uniqueness: true
    validates :ingredients, presence: true

    # To create association for the Restaurant selected in New Pizza Form:
    # define setter restaurant_id= in Pizza model
    # add restaurant_id to pizza_params
    def restaurant_id=(id)
      self.restaurants << Restaurant.find(id)
    end

  end