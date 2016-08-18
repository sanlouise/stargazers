class Profile < ActiveRecord::Base
	belongs_to :user
	validates :first_name, presence: true, length: { maximum: 50 }
	validates :last_name, presence: true, length: { maximum: 50 }
	validates :nationality, presence: true, length: { maximum: 50 }
	validates :bio, presence: true, length: { maximum: 500 }
	validates :image, presence: true
end