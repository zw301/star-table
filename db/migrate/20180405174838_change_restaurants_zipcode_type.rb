class ChangeRestaurantsZipcodeType < ActiveRecord::Migration[5.1]
  def change
    change_column :restaurants, :zipcode, :string
  end
end
