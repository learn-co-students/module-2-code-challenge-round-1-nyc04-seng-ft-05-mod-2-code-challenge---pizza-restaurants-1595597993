class Pizza < ApplicationRecord
    has_many :restaurantpizzas
    has_many :restaurants, through: :restaurantPizzas

   validates: :name, presence: true 
   validates: :ingredients, presence: true 

    validates :name, uniqueness: true, presence: true 

Pizzas should not have the same name.

Add a validation to prevent this.

Update the error handling and error display so that this error shows on the Pizza creation form.

end
