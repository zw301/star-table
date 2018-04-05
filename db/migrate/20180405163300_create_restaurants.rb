class CreateRestaurants < ActiveRecord::Migration[5.1]
  def change
    create_table :restaurants do |t|
      t.integer :owner_id, null: false
      t.string :name, null: false
      t.string :address, null: false
      t.integer :star, null: false
      t.string :city, null: false
      t.string :state, null: false
      t.integer :zipcode, null: false
      t.integer :phone_number, null: false
      t.string :open_time, null: false
      t.string :close_time, null: false
      t.string :cuisine, null: false
      t.string :description
      t.string :logo, null: false

      t.timestamps
    end
    add_index :restaurants, :name
    add_index :restaurants, :star
    add_index :restaurants, :address
    add_index :restaurants, :city
    add_index :restaurants, :cuisine
  end
end
