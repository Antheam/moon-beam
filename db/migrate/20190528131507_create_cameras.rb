class CreateCameras < ActiveRecord::Migration[5.2]
  def change
    create_table :cameras do |t|
t.integer :user_id
t.string :model
t.string :description
      t.timestamps
    end
  end
end
