class Receipt < ActiveRecord::Base
	STORES = ['Osh Hardware', 'Home Depot']
	MONTHS = [['January',1], ['February',2], ['March',3], ['April',4], ['May',5], ['June',6], 
			  ['July',7], ['August',8], ['September',9], ['October',10], ['November',11], ['December',12]]
	PAYMENT = ['Cash', 'Card - 1818 10th St (ending x5789)', 'Card - Via Deca II (ending x5714)', 'Card - Via Deca IV (ending x1534)', 'Card - Via Deca Partners (ending x1997)', 'Card - Amherst Avenue (ending x1781)']
	attr_accessible :store, :month, :day, :year, :description, :purchased_for, :price, :payment_method
	validates :description, presence: true
end
