class HealthProfessional < ActiveRecord::Base
  attr_accessible :address, :firstname, :lastname, :latitude, :longitude, :speciality
  
  geocoded_by :address
  after_validation :geocode

end
