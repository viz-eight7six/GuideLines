class PhotoCol < ActiveRecord::Migration[5.0]
  def change
    add_column :steps, :photo_url, :string
    add_column :users, :photo_url, :string
    add_column :guides, :photo_url, :string
  end
end
