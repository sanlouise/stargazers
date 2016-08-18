class ImagePost < ActiveRecord::Base
	belongs_to :user

	validates :image, presence: true
	validates :location, presence: true
	validates :description, presence: true, length: { maximum: 300 }
end