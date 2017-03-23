class CreatePhotos < ActiveRecord::Migration[5.0]
  def change
    create_table :photos do |t|
      t.string :url, null: false
      t.integer :user_id, null: false

      t.timestamps
    end
  end
end
