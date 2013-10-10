json.array!(@rolls) do |roll|
  json.extract! roll, :rent_due_1814_1, :rent_paid_1814_1, :rent_owed_1814_1, :rent_ontime_1814_1, :rent_payment_method_1814_1
  json.url roll_url(roll, format: :json)
end
