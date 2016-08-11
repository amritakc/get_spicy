class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.references :user, index: true, foreign_key: true
      t.references :restaurant, index: true, foreign_key: true
      t.string :dish
      t.text :cust_review
      t.integer :spice_level

      t.timestamps null: false
    end
  end
end
