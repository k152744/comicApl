class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  mount_uploader :image, ImageUploader
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  def remember_me
    true
  end
  
  has_many :scenes
  has_many :likes
end
