class Reservation < ApplicationRecord
  validates :user_id, :restaurant_id, :seats, :date, :time, presence: true

  belongs_to :user,
   primary_key: :id,
   foreign_key: :user_id,
   class_name: :User

  belongs_to :restaurant,
    primary_key: :id,
    foreign_key: :restaurant_id,
    class_name: :Restaurant
end
