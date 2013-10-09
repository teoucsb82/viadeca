require 'test_helper'

class LeasesControllerTest < ActionController::TestCase
  setup do
    @lease = leases(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:leases)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lease" do
    assert_difference('Lease.count') do
      post :create, lease: { deposit: @lease.deposit, late_payments: @lease.late_payments, lease_expires: @lease.lease_expires, lease_started: @lease.lease_started, rent: @lease.rent, status: @lease.status, street: @lease.street, tenant1_email: @lease.tenant1_email, tenant1_name: @lease.tenant1_name, tenant1_phone: @lease.tenant1_phone, tenant2_email: @lease.tenant2_email, tenant2_name: @lease.tenant2_name, tenant2_phone: @lease.tenant2_phone, tenant3_email: @lease.tenant3_email, tenant3_name: @lease.tenant3_name, tenant3_phone: @lease.tenant3_phone, tenant4_name: @lease.tenant4_name, tenant5_email: @lease.tenant5_email, tenant6_phone: @lease.tenant6_phone, unit: @lease.unit }
    end

    assert_redirected_to lease_path(assigns(:lease))
  end

  test "should show lease" do
    get :show, id: @lease
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lease
    assert_response :success
  end

  test "should update lease" do
    patch :update, id: @lease, lease: { deposit: @lease.deposit, late_payments: @lease.late_payments, lease_expires: @lease.lease_expires, lease_started: @lease.lease_started, rent: @lease.rent, status: @lease.status, street: @lease.street, tenant1_email: @lease.tenant1_email, tenant1_name: @lease.tenant1_name, tenant1_phone: @lease.tenant1_phone, tenant2_email: @lease.tenant2_email, tenant2_name: @lease.tenant2_name, tenant2_phone: @lease.tenant2_phone, tenant3_email: @lease.tenant3_email, tenant3_name: @lease.tenant3_name, tenant3_phone: @lease.tenant3_phone, tenant4_name: @lease.tenant4_name, tenant5_email: @lease.tenant5_email, tenant6_phone: @lease.tenant6_phone, unit: @lease.unit }
    assert_redirected_to lease_path(assigns(:lease))
  end

  test "should destroy lease" do
    assert_difference('Lease.count', -1) do
      delete :destroy, id: @lease
    end

    assert_redirected_to leases_path
  end
end
