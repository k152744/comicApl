class AddImageToScene < ActiveRecord::Migration[5.2]
  def change
    add_column :scenes, :image, :string, null: false
  end
end
