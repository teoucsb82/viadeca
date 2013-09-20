require 'test_helper'

class ApartmentsControllerTest < ActionController::TestCase
  setup do
    @apartment = apartments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:apartments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create apartment" do
    assert_difference('Apartment.count') do
      post :create, apartment: { airConditioning: @apartment.airConditioning, aptNumber: @apartment.aptNumber, balcony: @apartment.balcony, baths: @apartment.baths, beds: @apartment.beds, description: @apartment.description, dishwasher: @apartment.dishwasher, dryer: @apartment.dryer, fireplace: @apartment.fireplace, gasHeater: @apartment.gasHeater, hardwoodFloors: @apartment.hardwoodFloors, isAvailable: @apartment.isAvailable, laundryOnSite: @apartment.laundryOnSite, microwave: @apartment.microwave, parking: @apartment.parking, patio: @apartment.patio, pets: @apartment.pets, refrigerator: @apartment.refrigerator, rent: @apartment.rent, sqFootage: @apartment.sqFootage, stove: @apartment.stove, streetAddress: @apartment.streetAddress, util_cable: @apartment.util_cable, util_electric: @apartment.util_electric, util_gardener: @apartment.util_gardener, util_gas: @apartment.util_gas, util_internet: @apartment.util_internet, util_maid: @apartment.util_maid, util_trash: @apartment.util_trash, util_water: @apartment.util_water, washer: @apartment.washer }
    end

    assert_redirected_to apartment_path(assigns(:apartment))
  end

  test "should show apartment" do
    get :show, id: @apartment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @apartment
    assert_response :success
  end

  test "should update apartment" do
    patch :update, id: @apartment, apartment: { airConditioning: @apartment.airConditioning, aptNumber: @apartment.aptNumber, balcony: @apartment.balcony, baths: @apartment.baths, beds: @apartment.beds, description: @apartment.description, dishwasher: @apartment.dishwasher, dryer: @apartment.dryer, fireplace: @apartment.fireplace, gasHeater: @apartment.gasHeater, hardwoodFloors: @apartment.hardwoodFloors, isAvailable: @apartment.isAvailable, laundryOnSite: @apartment.laundryOnSite, microwave: @apartment.microwave, parking: @apartment.parking, patio: @apartment.patio, pets: @apartment.pets, refrigerator: @apartment.refrigerator, rent: @apartment.rent, sqFootage: @apartment.sqFootage, stove: @apartment.stove, streetAddress: @apartment.streetAddress, util_cable: @apartment.util_cable, util_electric: @apartment.util_electric, util_gardener: @apartment.util_gardener, util_gas: @apartment.util_gas, util_internet: @apartment.util_internet, util_maid: @apartment.util_maid, util_trash: @apartment.util_trash, util_water: @apartment.util_water, washer: @apartment.washer }
    assert_redirected_to apartment_path(assigns(:apartment))
  end

  test "should destroy apartment" do
    assert_difference('Apartment.count', -1) do
      delete :destroy, id: @apartment
    end

    assert_redirected_to apartments_path
  end
end
