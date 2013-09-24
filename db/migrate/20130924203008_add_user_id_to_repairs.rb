class AddUserIdToRepairs < ActiveRecord::Migration
  def change
    add_column :repairs, :user_id, :integer
    add_index :repairs, :user_id
  end
end
