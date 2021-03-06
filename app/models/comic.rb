class Comic < ApplicationRecord
  has_many :scenes

  validates :title, presence: true, uniqueness: true
  validates :image, presence: true

  mount_uploader :image, ImageUploader
end
