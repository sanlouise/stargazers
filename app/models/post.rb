class Post < ActiveRecord::Base

	belongs_to :astronomer

	validates :upload, presence: true
	validates :city, length: { minimum: 2 }
  validates :country, length: { minimum: 2 }
  validates :lat, numericality: { only_integer: false }
  validates :lon, numericality: { only_integer: false }
	validates :description, presence: true, length: { maximum: 300 }
  validates :equipment_used, length: { maximum: 300 }

end