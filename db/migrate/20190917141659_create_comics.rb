class CreateComics < ActiveRecord::Migration[5.2]
  def change
    create_table :comics do |t|
      t.string :title, null: false,unique: true
      t.string :image, null: false

      t.timestamps
    end
  end
end
