class Receipt < ActiveRecord::Base
	STORES = ['Osh Hardware', 'Home Depot']
	MONTHS = [['January',1], ['February',2], ['March',3], ['April',4], ['May',5], ['June',6], 
			  ['July',7], ['August',8], ['September',9], ['October',10], ['November',11], ['December',12]]
	PAYMENT = [['Cash','Cash'], ['Card - 1818 10th St (ending x5789)','VISA x5789'], ['Card - Via Deca II (ending x5714)','VISA x5714'], ['Card - Via Deca IV (ending x1534)','VISA x1534'], ['Card - Via Deca Partners (ending x1997)','VISA x1997'], ['Card - Amherst Avenue (ending x1781)','VISA x1781']]
	
	attr_accessible :store, :month, :day, :year, :description, :purchased_for, :price, :payment_method
	
	validates :day, numericality: { less_than_or_equal_to: 31, greater_than_or_equal_to: 1 }
	validates :year, numericality: { greater_than_or_equal_to: 2013 }

	belongs_to :user
  	validates :user_id, presence: true
	validates :description, presence: true
	validates :price, presence: true	
	validates :store, presence: true

end
