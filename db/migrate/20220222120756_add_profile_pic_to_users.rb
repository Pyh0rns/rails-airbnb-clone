class AddProfilePicToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :photo_id_url, :string
  end
end
