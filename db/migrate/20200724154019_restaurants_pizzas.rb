class RestaurantsPizzas < ActiveRecord::Migration[5.1]
  def change
    create_table :restaurant_pizzas, :id => false do |t|
      t.integer :restaurant_id
      t.integer :pizza_id
    end
  end
end
