class Restaurant < ApplicationRecord
  validates :owner_id, :name, :address, :star, :zipcode, :phone_number,
    :open_time, :close_time, :cuisine, :logo, presence: true

  after_initialize :ensure_logo,

  def ensure_logo
    self.logo ||= "default_logo_url";
  end

end
