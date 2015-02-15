class Truck < ActiveRecord::Base
  validates :title, presence: true,
            length: { minimum: 5 }

  geocoded_by :address
  after_validation :geocode, :if => :address_changed?
end
