class CreateApartments < ActiveRecord::Migration
  def change
    create_table :apartments do |t|
      t.string :streetAddress
      t.string :aptNumber
      t.integer :rent
      t.boolean :isAvailable
      t.string :description
      t.integer :sqFootage
      t.string :beds
      t.string :baths
      t.integer :parking
      t.boolean :stove
      t.boolean :washer
      t.boolean :dryer
      t.boolean :refrigerator
      t.boolean :microwave
      t.boolean :dishwasher
      t.boolean :laundryOnSite
      t.boolean :hardwoodFloors
      t.boolean :pets
      t.boolean :gasHeater
      t.boolean :balcony
      t.boolean :airConditioning
      t.boolean :fireplace
      t.boolean :patio
      t.boolean :util_gas
      t.boolean :util_water
      t.boolean :util_electric
      t.boolean :util_maid
      t.boolean :util_trash
      t.boolean :util_gardener
      t.boolean :util_cable
      t.boolean :util_internet

      t.timestamps
    end
  end
end
