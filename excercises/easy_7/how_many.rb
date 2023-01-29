def count_occurances(array)
  array.each_with_object({}) do |vehicle, hash|
    hash[vehicle] = array.count(vehicle)
  end
end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle',
  'car', 'truck'
]

count_occurances(vehicles)
