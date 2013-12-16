class Repair < ActiveRecord::Base

	STA = [['Received',1], ['In Progress',2], ['Closed',3]]

	attr_accessible :description, :location_address, :phn, :repair_details, :status

  	validates :description, presence: true
  	validates :location_address, presence: true
  	validates :phn, presence: true

  	belongs_to :user
  	validates :user_id, presence: true



end
