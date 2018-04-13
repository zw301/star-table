class Favorite < ApplicationRecord
  validates :user_id, :restaurant_id, presence: true

  belongs_to :user

  belongs_to :restaurant
end
