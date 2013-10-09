class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, #:recoverable, 
         :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for Users model
	attr_accessible :email, :password, :password_confirmation, :remember_me, :name, :phone, :address

	has_many :apartments, :dependent => :destroy
	has_many :repairs, :dependent => :destroy
	has_many :receipts, :dependent => :destroy
	has_many :leases, :dependent => :destroy

	validates :address, presence: true

end
