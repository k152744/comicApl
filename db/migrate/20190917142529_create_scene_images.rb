class CreateSceneImages < ActiveRecord::Migration[5.2]
  def change
    create_table :scene_images do |t|
      t.string :image,null: false
      t.references :scene, null: false,foreign_key: true

      t.timestamps
    end
  end
end
