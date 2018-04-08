class CreateReservations < ActiveRecord::Migration[5.1]
  def change
    create_table :reservations do |t|
      t.integer :user_id, null: false, index: true
      t.integer :restaurant_id, null: false, index: true
      t.string :time, null: false
      t.string :date, null: false
      t.integer :seats, null: false

      t.timestamps
    end
  end
end
