class Repair < ActiveRecord::Base
	attr_accessible :description, :location_address, :phn, :repair_details, :status

  	validates :description, presence: true
  	validates :location_address, presence: true
  	validates :phn, presence: true

  	belongs_to :user
  	validates :user_id, presence: true
end
