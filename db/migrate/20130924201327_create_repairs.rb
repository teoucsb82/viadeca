class CreateRepairs < ActiveRecord::Migration
  def change
    create_table :repairs do |t|
      t.string :description
      t.string :location_address
      t.string :phn
      t.string :repair_details
      t.integer :status

      t.timestamps
    end
  end
end
