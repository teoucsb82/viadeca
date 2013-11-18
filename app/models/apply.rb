class Apply < ActiveRecord::Base
	attr_accessible :aptaddress, :name, :email, :phone, :dob, :ssn, :license, :licensestate, 
	:current_address, :current_unit, :current_city, :current_state, :current_zip, :current_start_date, :current_end_date, :current_total_date, :current_rent, :current_manager, :current_manager_phone, :current_reason, 
	:previous_address, :previous_unit, :previous_city, :previous_state, :previous_zip, :previous_start_date, :previous_end_date, :previous_total_date, :previous_rent, :previous_manager, :previous_manager_phone, :previous_reason, 
	:employer, :employer_address, :employer_city, :employer_state, :employer_zip, :employer_start_date, :employer_total_date, :employer_salary, :employer_title, :employer_supervisor, :employer_supervisor_title, :employer_supervisor_phone, 
	:emergency_contact, :emergency_relationship, :emergency_phone, 
	:vehicle_make, :vehicle_model, :vehicle_color, :vehicle_year, :vehicle_license, 
	:message, :acknowledgment

	validates :name, :aptaddress, :email, :phone, :dob, :license, :licensestate, :current_address, :current_city, :current_state, :current_zip, :current_start_date, :current_end_date, :current_total_date, :current_rent, :current_reason, 
            :presence => true
  
  	validates :email,
            :format => { :with => /\b[A-Z0-9._%a-z\-]+@(?:[A-Z0-9a-z\-]+\.)+[A-Za-z]{2,4}\z/ }
  
  	validates :message,
            :length => { :maximum => 1000 }

	validates :ssn,
			:presence => true,
            :length => { :minimum => 9, :maximum => 11 } 

	validates :current_zip, 
            :length => { :minimum => 5, :maximum => 5 }                       


end