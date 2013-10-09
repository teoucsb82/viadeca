class Receipt < ActiveRecord::Base
	STORES = ['Osh Hardware', 'Home Depot', 'Ace Lock-N-Key', 'Busy Bee']
	MONTHS = [['1 - January',1], ['2 - February',2], ['3 - March',3], ['4 - April',4], ['5 - May',5], ['6 - June',6], 
			  ['7 - July',7], ['8 - August',8], ['9 - September',9], ['10 - October',10], ['11 - November',11], ['12 - December',12]]
	PAYMENT = [['Cash','Cash'], ['Card - 1818 10th St (ending x5789)','VISA x5789'], ['Card - Via Deca II (ending x5714)','VISA x5714'], ['Card - Via Deca IV (ending x1534)','VISA x1534'], ['Card - Via Deca Partners (ending x1997)','VISA x1997'], ['Card - Amherst Avenue (ending x1781)','VISA x1781']]
	
	attr_accessible :store, :month, :day, :year, :description, :purchased_for, :price, :payment_method, :image
	has_attached_file :image
	
	validates :day, numericality: { less_than_or_equal_to: 31, greater_than_or_equal_to: 1 }
	validates :year, numericality: { greater_than_or_equal_to: 2013 }

	belongs_to :user
	has_many :apartments
  	validates :user_id, presence: true
	validates :description, presence: true
	validates :price, presence: true	
	validates :store, presence: true
  	validates_attachment :image, presence: true,
                            content_type: { content_type: ['image/jpeg', 'image/jpg', 'image/png', 'image/gif'] },
                            size: { less_than: 5.megabytes }


end
