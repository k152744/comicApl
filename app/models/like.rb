class Like < ApplicationRecord
  belongs_to :user
  belongs_to :scene, counter_cache: :likes_count

  validates :user_id, presence: true
  validates :scene_id, presence: true

  validates_uniqueness_of :scene_id, scope: :user_id
end
