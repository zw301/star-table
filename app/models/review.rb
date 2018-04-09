class Review < ApplicationRecord
  validates :user_id, :restaurant_id, presence: true
  validates :rating, inclusion: { in: [1, 2, 3, 4, 5] }, presence: true

  belongs_to :user,
  primary_key: :id,
  foreign_key: :user_id,
  class_name: :User

  belongs_to :restaurant,
  primary_key: :id,
  foreign_key: :restaurant_id,
  class_name: :Restaurant
end
