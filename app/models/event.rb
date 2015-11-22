class Event < ActiveRecord::Base
	geocoded_by :address
	after_validation :geocode, :if => :address_changed?
	validates :name, presence: true
	serialize :pictures
	mount_uploaders :pictures, PictureUploader

	def self.search(search)
	  where("name LIKE ?", "%#{search}%") 
	end
end

