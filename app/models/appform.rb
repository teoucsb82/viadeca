# app/models/inquiry.rb
 
class Appform
  extend ActiveModel::Naming
  include ActiveModel::Conversion
  include ActiveModel::Validations
  include ActionView::Helpers::TextHelper
  
  attr_accessor :name, :email, :dob, :ssn, :license, :licensestate, :phone,
                :current_address, :current_unit, :current_city, :current_state, :current_zip, :current_start_date, :current_end_date, :current_total_date, :current_rent, :current_manager_phone, :current_manager, :current_reason,
                :previous_address, :previous_unit, :previous_city, :previous_state, :previous_zip, :previous_start_date, :previous_end_date, :previous_total_date, :previous_rent, :previous_manager_phone, :previous_manager, :previous_reason,
                :employer, :employer_address, :employer_city, :employer_state, :employer_zip, :employer_start_date, :employer_total_date, :employer_salary, :employer_title, :employer_supervisor, :employer_supervisor_title, :employer_supervisor_phone,
                :emergency_contact, :emergency_relationship, :emergency_phone,
                :vehicle_make, :vehicle_model, :vehicle_color, :vehicle_year, :vehicle_license,
                :message
                  
  
  validates :name, 
            :presence => true
  
  validates :email,
            :format => { :with => /\b[A-Z0-9._%a-z\-]+@(?:[A-Z0-9a-z\-]+\.)+[A-Za-z]{2,4}\z/ }
   
  validates :licensestate,
            :length => { :maximum => 2 }  
  
  def initialize(attributes = {})
    attributes.each do |name, value|
      send("#{name}=", value)
    end
  end
  
  def deliver
    return false unless valid?
    Pony.mail({
      :from => %("#{name}" <#{email}>),
      :reply_to => email,
      :subject => "Application",
      :body => message,
      :html_body => simple_format(message)
    })
  end
      
  def persisted?
    false
  end
end