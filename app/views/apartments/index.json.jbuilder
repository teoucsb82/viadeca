json.array!(@apartments) do |apartment|
  json.extract! apartment, :streetAddress, :aptNumber, :rent, :isAvailable, :description, :sqFootage, :beds, :baths, :parking, :stove, :washer, :dryer, :refrigerator, :microwave, :dishwasher, :laundryOnSite, :hardwoodFloors, :pets, :gasHeater, :balcony, :airConditioning, :fireplace, :patio, :util_gas, :util_water, :util_electric, :util_maid, :util_trash, :util_gardener, :util_cable, :util_internet
  json.url apartment_url(apartment, format: :json)
end
