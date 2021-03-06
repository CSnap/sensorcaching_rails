class Sensor < ActiveRecord::Base
  belongs_to :sensor_type
  belongs_to :user
  has_many :sensor_finds
  
  reverse_geocoded_by :latitude, :longitude
  after_validation :reverse_geocode
end
