arr = [[2], [3, 5, 7, 12], [9], [11, 13, 15]]

arr.map do |inner_arr|
	inner_arr.select do |num|
		num % 3 == 0
	end
end
