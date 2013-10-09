class AddUserIdToLeases < ActiveRecord::Migration
  def change
    add_column :leases, :user_id, :integer
    add_index :leases, :user_id
  end
end
