json.array!(@receipts) do |receipt|
  json.extract! receipt, :store, :month, :day, :year, :description, :purchased_for, :price, :payment_method
  json.url receipt_url(receipt, format: :json)
end
