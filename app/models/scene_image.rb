class SceneImage < ApplicationRecord
  belongs_to :scene

  validates :image, presence: true
  validates :scene_id, presence: true
end
