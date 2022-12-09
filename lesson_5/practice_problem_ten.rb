array = [{ a: 1 }, { b: 2, c: 3 }, { d: 4, e: 5, f: 6 }]

array.map do |hash|
	transformed_hashes = {}
	hash.each do |key, value|
		transformed_hashes[key] = value + 1
	end

	transformed_hashes
end

# hash.map do |hashes|
# 	hashes.transform_values { |value| value + 1 }
# end
