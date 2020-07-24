class Restaurant < ApplicationRecord
    has_many :restaurant_pizzas
    has_many :pizzas, through: :restaurant_pizzas

    def pizza_ids=(ids)
        self.pizzas.pluck(:id).each do |old_pizza_id|
            if !ids.include?(old_pizza_id.to_s)
                RestaurantPizza.find_by(restaurant_id: self.id, pizza_id: old_pizza_id).destroy
            else
                ids.delete(old_pizza_id.to_s)
            end
        end

        ids.each do |id|
            if !id.blank?
            self.pizzas << Pizza.find(id)
            end
        end

    end
end
