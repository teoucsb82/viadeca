class Roll < ActiveRecord::Base
	PAYMENT = ['Check', 'Online']
	
	attr_accessible  :rent_due_1814_1, :rent_paid_1814_1, :rent_owed_1814_1, :rent_ontime_1814_1, :rent_payment_method_1814_1, 
						:rent_due_1814_3, :rent_paid_1814_3, :rent_owed_1814_3, :rent_ontime_1814_3, :rent_payment_method_1814_3,  
						:rent_due_1814_2, :rent_paid_1814_2, :rent_owed_1814_2, :rent_ontime_1814_2, :rent_payment_method_1814_2,  
						:rent_due_1814_4, :rent_paid_1814_4, :rent_owed_1814_4, :rent_ontime_1814_4, :rent_payment_method_1814_4,  
						:rent_due_1814_5, :rent_paid_1814_5, :rent_owed_1814_5, :rent_ontime_1814_5, :rent_payment_method_1814_5,  
						:rent_due_1818_1, :rent_paid_1818_1, :rent_owed_1818_1, :rent_ontime_1818_1, :rent_payment_method_1818_1,  
						:rent_due_1818_B, :rent_paid_1818_B, :rent_owed_1818_B, :rent_ontime_1818_B, :rent_payment_method_1818_B,  
						:rent_due_1818_A, :rent_paid_1818_A, :rent_owed_1818_A, :rent_ontime_1818_A, :rent_payment_method_1818_A,  
						:rent_due_1818_C, :rent_paid_1818_C, :rent_owed_1818_C, :rent_ontime_1818_C, :rent_payment_method_1818_C,  
						:rent_due_1818_D, :rent_paid_1818_D, :rent_owed_1818_D, :rent_ontime_1818_D, :rent_payment_method_1818_D,  
						:rent_due_1241_1, :rent_paid_1241_1, :rent_owed_1241_1, :rent_ontime_1241_1, :rent_payment_method_1241_1,  
						:rent_due_1241_3, :rent_paid_1241_3, :rent_owed_1241_3, :rent_ontime_1241_3, :rent_payment_method_1241_3,  
						:rent_due_1241_2, :rent_paid_1241_2, :rent_owed_1241_2, :rent_ontime_1241_2, :rent_payment_method_1241_2,  
						:rent_due_1241_4, :rent_paid_1241_4, :rent_owed_1241_4, :rent_ontime_1241_4, :rent_payment_method_1241_4,  
						:rent_due_1241_5, :rent_paid_1241_5, :rent_owed_1241_5, :rent_ontime_1241_5, :rent_payment_method_1241_5,  
						:rent_due_1241_6, :rent_paid_1241_6, :rent_owed_1241_6, :rent_ontime_1241_6, :rent_payment_method_1241_6,  
						:rent_due_1241_7, :rent_paid_1241_7, :rent_owed_1241_7, :rent_ontime_1241_7, :rent_payment_method_1241_7,  
						:rent_due_1241_8, :rent_paid_1241_8, :rent_owed_1241_8, :rent_ontime_1241_8, :rent_payment_method_1241_8,  
						:rent_due_1241_9, :rent_paid_1241_9, :rent_owed_1241_9, :rent_ontime_1241_9, :rent_payment_method_1241_9,  
						:rent_due_1723_1, :rent_paid_1723_1, :rent_owed_1723_1, :rent_ontime_1723_1, :rent_payment_method_1723_1,  
						:rent_due_1723_3, :rent_paid_1723_3, :rent_owed_1723_3, :rent_ontime_1723_3, :rent_payment_method_1723_3,  
						:rent_due_1723_2, :rent_paid_1723_2, :rent_owed_1723_2, :rent_ontime_1723_2, :rent_payment_method_1723_2,  
						:rent_due_1723_4, :rent_paid_1723_4, :rent_owed_1723_4, :rent_ontime_1723_4, :rent_payment_method_1723_4,  
						:rent_due_1723_5, :rent_paid_1723_5, :rent_owed_1723_5, :rent_ontime_1723_5, :rent_payment_method_1723_5,  
						:rent_due_2462_B, :rent_paid_2462_B, :rent_owed_2462_B, :rent_ontime_2462_B, :rent_payment_method_2462_B,  
						:rent_due_2462_A, :rent_paid_2462_A, :rent_owed_2462_A, :rent_ontime_2462_A, :rent_payment_method_2462_A,  
						:rent_due_2462_C, :rent_paid_2462_C, :rent_owed_2462_C, :rent_ontime_2462_C, :rent_payment_method_2462_C,
						:month, :year

	belongs_to :user
	validates :user_id, presence: true

end
