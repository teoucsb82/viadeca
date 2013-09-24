class CreateApplies < ActiveRecord::Migration
  def change
    create_table :applies do |t|
      t.string :aptaddress
      t.string :name
      t.string :email
      t.string :phone
      t.string :dob
      t.string :ssn
      t.string :license
      t.string :licensestate
      t.string :current_address
      t.string :current_unit
      t.string :current_city
      t.string :current_state
      t.integer :current_zip
      t.string :current_start_date
      t.string :current_end_date
      t.string :current_total_date
      t.integer :current_rent
      t.string :current_manager
      t.string :current_manager_phone
      t.string :current_reason
      t.string :previous_address
      t.string :previous_unit
      t.string :previous_city
      t.string :previous_state
      t.integer :previous_zip
      t.string :previous_start_date
      t.string :previous_end_date
      t.string :previous_total_date
      t.integer :previous_rent
      t.string :previous_manager
      t.string :previous_manager_phone
      t.string :previous_reason
      t.string :employer
      t.string :employer_address
      t.string :employer_city
      t.string :employer_state
      t.integer :employer_zip
      t.string :employer_start_date
      t.string :employer_total_date
      t.integer :employer_salary
      t.string :employer_title
      t.string :employer_supervisor
      t.string :employer_supervisor_title
      t.string :employer_supervisor_phone
      t.string :emergency_contact
      t.string :emergency_relationship
      t.string :emergency_phone
      t.string :vehicle_make
      t.string :vehicle_model
      t.string :vehicle_color
      t.integer :vehicle_year
      t.string :vehicle_license
      t.string :message
      t.boolean :acknowledgment

      t.timestamps
    end
  end
end
