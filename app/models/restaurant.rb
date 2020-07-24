class Restaurant < ApplicationRecord
has_many :restaurant_pizzas
has_many :pizzas, through: :restaurant_pizzas



def pizza_ids=(ids)
    ids.each do |id|
        pizza=Pizza.find(id)
        self.pizzas<<pizza
    end
end
end
