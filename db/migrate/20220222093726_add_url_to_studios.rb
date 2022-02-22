class AddUrlToStudios < ActiveRecord::Migration[6.1]
  def change
    add_column :studios, :photo_url, :string
  end
end
