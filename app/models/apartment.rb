class Apartment < ActiveRecord::Base
	attr_accessible :description, :image, :streetAddress, :aptNumber, :rent, :isAvailable, :description, :sqFootage, :beds, :baths, :parking, :stove, :washer, :dryer, :refrigerator, :microwave, :dishwasher, :laundryOnSite, :hardwoodFloors, :pets, :gasHeater, :balcony, :aircConditioning, :fireplace, :patio, :util_gas, :util_water, :util_electric, :util_maid, :util_trash, :util_gardener, :util_cable, :util_internet

	validates :streetAddress, presence: true, length: { minimum: 5 }
	validates :aptNumber, presence: true
	validates :rent, presence: true
	validates :beds, presence: true
	validates :baths, presence: true
	validates :user_id, presence: true

	has_attached_file :image, styles: { medium: "320x240>"}
	validates_attachment :image, presence: true,
                            content_type: { content_type: ['image/jpeg', 'image/jpg', 'image/png', 'image/gif'] },
                            size: { less_than: 2.megabytes }
	belongs_to :user


end
