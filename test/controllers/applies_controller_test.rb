require 'test_helper'

class AppliesControllerTest < ActionController::TestCase
  setup do
    @apply = applies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:applies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create apply" do
    assert_difference('Apply.count') do
      post :create, apply: { acknowledgment: @apply.acknowledgment, aptaddress: @apply.aptaddress, current_address: @apply.current_address, current_city: @apply.current_city, current_end_date: @apply.current_end_date, current_manager: @apply.current_manager, current_manager_phone: @apply.current_manager_phone, current_reason: @apply.current_reason, current_rent: @apply.current_rent, current_start_date: @apply.current_start_date, current_state: @apply.current_state, current_total_date: @apply.current_total_date, current_unit: @apply.current_unit, current_zip: @apply.current_zip, dob: @apply.dob, email: @apply.email, emergency_contact: @apply.emergency_contact, emergency_phone: @apply.emergency_phone, emergency_relationship: @apply.emergency_relationship, employer: @apply.employer, employer_address: @apply.employer_address, employer_city: @apply.employer_city, employer_salary: @apply.employer_salary, employer_start_date: @apply.employer_start_date, employer_state: @apply.employer_state, employer_supervisor: @apply.employer_supervisor, employer_supervisor_phone: @apply.employer_supervisor_phone, employer_supervisor_title: @apply.employer_supervisor_title, employer_title: @apply.employer_title, employer_total_date: @apply.employer_total_date, employer_zip: @apply.employer_zip, license: @apply.license, licensestate: @apply.licensestate, message: @apply.message, name: @apply.name, phone: @apply.phone, previous_address: @apply.previous_address, previous_city: @apply.previous_city, previous_end_date: @apply.previous_end_date, previous_manager: @apply.previous_manager, previous_manager_phone: @apply.previous_manager_phone, previous_reason: @apply.previous_reason, previous_rent: @apply.previous_rent, previous_start_date: @apply.previous_start_date, previous_state: @apply.previous_state, previous_total_date: @apply.previous_total_date, previous_unit: @apply.previous_unit, previous_zip: @apply.previous_zip, ssn: @apply.ssn, vehicle_color: @apply.vehicle_color, vehicle_license: @apply.vehicle_license, vehicle_make: @apply.vehicle_make, vehicle_model: @apply.vehicle_model, vehicle_year: @apply.vehicle_year }
    end

    assert_redirected_to apply_path(assigns(:apply))
  end

  test "should show apply" do
    get :show, id: @apply
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @apply
    assert_response :success
  end

  test "should update apply" do
    patch :update, id: @apply, apply: { acknowledgment: @apply.acknowledgment, aptaddress: @apply.aptaddress, current_address: @apply.current_address, current_city: @apply.current_city, current_end_date: @apply.current_end_date, current_manager: @apply.current_manager, current_manager_phone: @apply.current_manager_phone, current_reason: @apply.current_reason, current_rent: @apply.current_rent, current_start_date: @apply.current_start_date, current_state: @apply.current_state, current_total_date: @apply.current_total_date, current_unit: @apply.current_unit, current_zip: @apply.current_zip, dob: @apply.dob, email: @apply.email, emergency_contact: @apply.emergency_contact, emergency_phone: @apply.emergency_phone, emergency_relationship: @apply.emergency_relationship, employer: @apply.employer, employer_address: @apply.employer_address, employer_city: @apply.employer_city, employer_salary: @apply.employer_salary, employer_start_date: @apply.employer_start_date, employer_state: @apply.employer_state, employer_supervisor: @apply.employer_supervisor, employer_supervisor_phone: @apply.employer_supervisor_phone, employer_supervisor_title: @apply.employer_supervisor_title, employer_title: @apply.employer_title, employer_total_date: @apply.employer_total_date, employer_zip: @apply.employer_zip, license: @apply.license, licensestate: @apply.licensestate, message: @apply.message, name: @apply.name, phone: @apply.phone, previous_address: @apply.previous_address, previous_city: @apply.previous_city, previous_end_date: @apply.previous_end_date, previous_manager: @apply.previous_manager, previous_manager_phone: @apply.previous_manager_phone, previous_reason: @apply.previous_reason, previous_rent: @apply.previous_rent, previous_start_date: @apply.previous_start_date, previous_state: @apply.previous_state, previous_total_date: @apply.previous_total_date, previous_unit: @apply.previous_unit, previous_zip: @apply.previous_zip, ssn: @apply.ssn, vehicle_color: @apply.vehicle_color, vehicle_license: @apply.vehicle_license, vehicle_make: @apply.vehicle_make, vehicle_model: @apply.vehicle_model, vehicle_year: @apply.vehicle_year }
    assert_redirected_to apply_path(assigns(:apply))
  end

  test "should destroy apply" do
    assert_difference('Apply.count', -1) do
      delete :destroy, id: @apply
    end

    assert_redirected_to applies_path
  end
end
