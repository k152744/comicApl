class AddDefaultToLikeCounts < ActiveRecord::Migration[5.2]
  def change
    change_column_default :scenes, :likes_count, null: false, default: 0
  end
end
