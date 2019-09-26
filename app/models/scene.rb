class Scene < ApplicationRecord
  belongs_to :user
  belongs_to :comic
  has_many :likes
  has_many :scenes_images

  validates :title, presence: true
  validates :content, presence: true
  validates :user_id, presence: true
  validates :comic_id, presence: true
  
end
