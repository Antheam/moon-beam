class CreatePhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :photos do |t|
t.integer :album_id
t.integer :camera_id
t.string :image_link
      t.timestamps
    end
  end
end
