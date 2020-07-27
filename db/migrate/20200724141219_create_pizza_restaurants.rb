class CreatePizzaRestaurants < ActiveRecord::Migration[5.1]
  def change
    create_table :pizza_restaurants do |t|
      t.belongs_to :pizza, foreign_key: true
      t.belongs_to :restaurant, foreign_key: true

      t.timestamps
    end
  end
end
