class Restaurant < ApplicationRecord
  has_many :restaurant_pizzas, dependent: :destroy
  has_many :pizzas, through: :restaurant_pizzas
  
  # To create association for each of the Pizzas selected in Restaurant Update Form:
  # define setter pizzas_ids= in Restaurant model
  # add pizza_ids to restaurant_params
  def pizzas_ids=(ids)
    ids.each do |id|
      self.pizzas << Pizza.find(id)  
    end
  end

end 