class Like < ApplicationRecord
  belongs_to :user
  belongs_to :scene

  validates :user_id, presence: true
  validates :scene_id, presence: true
end
