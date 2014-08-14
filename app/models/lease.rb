class Lease < ActiveRecord::Base
	ADDRESSES = ['1818 10th Street', '1814 10th Street', '2462 Oak Street', '1241 Amherst Ave', '1723 Centinela Ave', '1124 7th Street']

	attr_accessible :street, :unit, :rent, :deposit, :status, :beds, :bath,
					:tenant1_name, :tenant1_email, :tenant1_phone, 
					:tenant2_name, :tenant2_email, :tenant2_phone, 
					:tenant3_name, :tenant3_email, :tenant3_phone, 
					:tenant4_name, :tenant5_email, :tenant6_phone, 
					:lease_started, :lease_expires, :late_payments, :doc
	
	has_attached_file :doc

	belongs_to :user
	validates :user_id, presence: true
	validates :street, presence: true

	validates_attachment_content_type :doc, :content_type => ['application/pdf', 'application/msword', 'text/plain']

end
