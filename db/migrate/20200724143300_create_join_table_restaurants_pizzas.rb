class CreateJoinTableRestaurantsPizzas < ActiveRecord::Migration[5.1]
  def change
    create_join_table :restaurants, :pizzas do |t|
      t.index [:restaurant_id, :pizza_id]
      t.index [:pizza_id, :restaurant_id]
      t.integer :pizza
      t.integer :restaurant
    end
  end
end
