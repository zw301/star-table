class Restaurant < ApplicationRecord
  validates :owner_id, :name, :address, :star, :zipcode, :phone_number,
    :open_time, :close_time, :cuisine, :logo, presence: true

  after_initialize :ensure_logo, :ensure_open_time, :ensure_close_time

  def ensure_logo
    self.logo ||= "default_logo_url";
  end

  def ensure_open_time
    self.open_time = "12:00:00"
  end

  def ensure_close_time
    self.close_time = "22:00:00"
  end

end
