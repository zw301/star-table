class Restaurant < ApplicationRecord
  validates :owner_id, :name, :address, :city, :state, :star, :zipcode, :phone_number,
    :open_time, :close_time, :cuisine, :logo, presence: true

  after_initialize :ensure_logo, :ensure_open_time, :ensure_close_time, :ensure_star

  has_many :reservations,
    primary_key: :id,
    foreign_key: :restaurant_id,
    class_name: :Reservation

  has_many :reviews,
    primary_key: :id,
    foreign_key: :restaurant_id,
    class_name: :Review

  has_many :favorites

  def ensure_logo
    self.logo ||= "http://res.cloudinary.com/chengzii/image/upload/v1523493008/default_restaurant_img.jpg";
  end

  def ensure_open_time
    self.open_time ||= "12:00:00"
  end

  def ensure_close_time
    self.close_time ||= "22:00:00"
  end

  def ensure_star
    self.star ||= 0
  end

  def self.find_by_keyword(keyword)
    Restaurant.where("lower(city) like ?", "%#{keyword.downcase}%")
              .or(Restaurant.where("lower(name) like ?", "#{keyword.downcase}%"))
              .or(Restaurant.where("lower(cuisine) like ?", "#{keyword.downcase}%"))
              .or(Restaurant.where("lower(address) like ?", "#{keyword.downcase}%"))
              .or(Restaurant.where("lower(state) like ?", "#{keyword.downcase}%"))
  end

  def rating_arr
    self.reviews.pluck(:rating)
  end
end
