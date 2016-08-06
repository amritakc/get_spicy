class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :rest_name
      t.string :address
      t.string :state
      t.integer :zipcode
      t.string :food_type

      t.timestamps null: false
    end
  end
end
