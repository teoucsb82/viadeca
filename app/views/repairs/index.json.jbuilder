json.array!(@repairs) do |repair|
  json.extract! repair, :description, :location_address, :phn, :repair_details, :status
  json.url repair_url(repair, format: :json)
end
