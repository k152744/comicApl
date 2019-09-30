class AddLikesCountToScenes < ActiveRecord::Migration[5.2]
  def change
    add_column :scenes, :likes_count, :integer
  end
end
