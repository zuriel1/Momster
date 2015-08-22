class Place < ActiveRecord::Base
 belongs_to :user

 has_many :comments
  geocoded_by :address
  after_validation :geocode
  
  validates :name, :presence => true
	validates :dscription, :presence => true
	validates :address, :presence => true
end
