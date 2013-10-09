json.array!(@leases) do |lease|
  json.extract! lease, :street, :unit, :rent, :deposit, :status, :tenant1_name, :tenant1_email, :tenant1_phone, :tenant2_name, :tenant2_email, :tenant2_phone, :tenant3_name, :tenant3_email, :tenant3_phone, :tenant4_name, :tenant5_email, :tenant6_phone, :lease_started, :lease_expires, :late_payments
  json.url lease_url(lease, format: :json)
end
