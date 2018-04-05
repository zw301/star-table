class ChangeRestaurantsPhoneNumberType < ActiveRecord::Migration[5.1]
  def change
    change_column :restaurants, :phone_number, :string
  end
end
