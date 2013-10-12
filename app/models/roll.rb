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
						:month, :year,
						:notes_1814_1, :notes_1814_2, :notes_1814_3, :notes_1814_4, :notes_1814_5, :notes_1818_1, :notes_1818_A, :notes_1818_B, :notes_1818_C, :notes_1818_D, :notes_2462_A, :notes_2462_B, :notes_2462_C, :notes_1241_1, :notes_1241_2, :notes_1241_3, :notes_1241_4, :notes_1241_5, :notes_1241_6, :notes_1241_7, :notes_1241_8, :notes_1241_9, :notes_1723_1, :notes_1723_2, :notes_1723_3, :notes_1723_4, :notes_1723_5,
						:img_1814_1, :img_1814_2, :img_1814_3, :img_1814_4, :img_1814_5,
						:img_1818_1, :img_1818_a, :img_1818_b, :img_1818_c, :img_1818_d,
						:img_2462_a, :img_2462_b, :img_2462_c,
						:img_1241_1, :img_1241_2, :img_1241_3, :img_1241_4, :img_1241_5, :img_1241_6, :img_1241_7, :img_1241_8, :img_1241_9,
						:img_1723_1, :img_1723_2, :img_1723_3, :img_1723_4, :img_1723_5,
						:img_1241_rent, :img_1723_rent, :img_1814_rent, :img_1818_rent, :img_2462_rent

	has_attached_file :img_1241_1, styles: { medium: "320x240>"}
	has_attached_file :img_1241_2, styles: { medium: "320x240>"}
	has_attached_file :img_1241_3, styles: { medium: "320x240>"}
	has_attached_file :img_1241_4, styles: { medium: "320x240>"}
	has_attached_file :img_1241_5, styles: { medium: "320x240>"}
	has_attached_file :img_1241_6, styles: { medium: "320x240>"}
	has_attached_file :img_1241_7, styles: { medium: "320x240>"}
	has_attached_file :img_1241_8, styles: { medium: "320x240>"}
	has_attached_file :img_1241_9, styles: { medium: "320x240>"}

	has_attached_file :img_1723_1, styles: { medium: "320x240>"}
	has_attached_file :img_1723_2, styles: { medium: "320x240>"}
	has_attached_file :img_1723_3, styles: { medium: "320x240>"}
	has_attached_file :img_1723_4, styles: { medium: "320x240>"}
	has_attached_file :img_1723_5, styles: { medium: "320x240>"}

	has_attached_file :img_1814_1, styles: { medium: "320x240>"}
	has_attached_file :img_1814_2, styles: { medium: "320x240>"}
	has_attached_file :img_1814_3, styles: { medium: "320x240>"}
	has_attached_file :img_1814_4, styles: { medium: "320x240>"}
	has_attached_file :img_1814_5, styles: { medium: "320x240>"}

	has_attached_file :img_1818_1, styles: { medium: "320x240>"}
	has_attached_file :img_1818_a, styles: { medium: "320x240>"}
	has_attached_file :img_1818_b, styles: { medium: "320x240>"}
	has_attached_file :img_1818_c, styles: { medium: "320x240>"}
	has_attached_file :img_1818_d, styles: { medium: "320x240>"}

	has_attached_file :img_2462_a, styles: { medium: "320x240>"}
	has_attached_file :img_2462_b, styles: { medium: "320x240>"}
	has_attached_file :img_2462_c, styles: { medium: "320x240>"}


	has_attached_file :img_1241_rent, styles: { medium: "320x240>"}
	has_attached_file :img_1723_rent, styles: { medium: "320x240>"}
	has_attached_file :img_1814_rent, styles: { medium: "320x240>"}
	has_attached_file :img_1818_rent, styles: { medium: "320x240>"}
	has_attached_file :img_2462_rent, styles: { medium: "320x240>"}

	belongs_to :user
	validates :user_id, presence: true

end
