class CreateLeases < ActiveRecord::Migration
  def change
    create_table :leases do |t|
      t.string :street
      t.string :unit
      t.float :rent
      t.float :deposit
      t.string :status
      t.string :tenant1_name
      t.string :tenant1_email
      t.string :tenant1_phone
      t.string :tenant2_name
      t.string :tenant2_email
      t.string :tenant2_phone
      t.string :tenant3_name
      t.string :tenant3_email
      t.string :tenant3_phone
      t.string :tenant4_name
      t.string :tenant5_email
      t.string :tenant6_phone
      t.string :lease_started
      t.string :lease_expires
      t.integer :late_payments

      t.timestamps
    end
  end
end
