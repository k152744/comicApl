class Records < ActiveRecord::Migration[5.2]
  def change
    drop_table :scene_images
  end
end
