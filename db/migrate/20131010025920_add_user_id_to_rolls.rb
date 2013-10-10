class AddUserIdToRolls < ActiveRecord::Migration
  def change
    add_column :rolls, :user_id, :integer
    add_index :rolls, :user_id
  end
end
