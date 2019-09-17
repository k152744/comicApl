class AddColumnToScene < ActiveRecord::Migration[5.2]
  def change
    add_column :scenes, :title, :string, null: false
    add_column :scenes, :content, :text, null: false
    add_reference :scenes,:user, foreign_key: true
    add_reference :scenes,:comic, foreign_key: true
  end
end
