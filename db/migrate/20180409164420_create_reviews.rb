class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.integer :user_id, null: false, index: true
      t.integer :restaurant_id, null: false, index: true
      t.integer :rating, null: false
      t.text :comment

      t.timestamps
    end
  end
end
