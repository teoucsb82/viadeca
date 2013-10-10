class AddBedsToLeases < ActiveRecord::Migration
  def change
    add_column :leases, :beds, :integer
    add_column :leases, :bath, :float
  end
end
