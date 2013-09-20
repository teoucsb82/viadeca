class Apartment < ActiveRecord::Base
	attr_accessible :description, :streetAddress, :aptNumber, :rent, :isAvailable, :description, :sqFootage, :beds, :baths, :parking, :stove, :washer, :dryer, :refrigerator, :microwave, :dishwasher, :laundryOnSite, :hardwoodFloors, :pets, :gasHeater, :balcony, :aircConditioning, :fireplace, :patio, :util_gas, :util_water, :util_electric, :util_maid, :util_trash, :util_gardener, :util_cable, :util_internet

	validates :streetAddress, presence: true, length: { minimum: 5 }
	validates :aptNumber, presence: true
	validates :rent, presence: true
	validates :beds, presence: true
	validates :baths, presence: true

	belongs_to :user
	validates :user_id, presence: true
end
