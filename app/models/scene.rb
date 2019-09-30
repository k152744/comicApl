class Scene < ApplicationRecord
  belongs_to :user
  belongs_to :comic
  has_many :likes

  mount_uploader :image, ImageUploader

  validates :title, presence: true,length: { maximum: 20 }
  validates :content, presence: true,length: { maximum: 100 }
  validates :image, presence: true
  validates :user_id, presence: true
  validates :comic_id, presence: true
  
end
