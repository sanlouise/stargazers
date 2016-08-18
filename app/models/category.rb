class Category < ActiveRecord::Base

  has_many :image_posts
  has_many :video_posts

  validates :name, presence: true

end