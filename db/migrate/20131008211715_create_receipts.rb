class CreateReceipts < ActiveRecord::Migration
  def change
    create_table :receipts do |t|
      t.string :store
      t.integer :month
      t.integer :day
      t.integer :year
      t.text :description
      t.string :purchased_for
      t.float :price
      t.string :payment_method

      t.timestamps
    end
  end
end
