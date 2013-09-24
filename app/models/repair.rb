class Repair < ActiveRecord::Base
	attr_accessible :description, :location_address, :phn, :repair_details, :status

  	validates :description, presence: true
end
