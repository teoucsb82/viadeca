class AddImageRemoteUrlToApartments < ActiveRecord::Migration
  def change
    add_column :apartments, :image_remote_url, :string
  end
end
