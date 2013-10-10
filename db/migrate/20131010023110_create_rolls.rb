class CreateRolls < ActiveRecord::Migration
  def change
    create_table :rolls do |t|
      t.float :rent_due_1814_1
      t.float :rent_paid_1814_1
      t.float :rent_owed_1814_1
      t.boolean :rent_ontime_1814_1
      t.string :rent_payment_method_1814_1

      t.timestamps
    end
  end
end
