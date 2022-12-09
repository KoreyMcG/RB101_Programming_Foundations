def remove_evens!(arr)
  arr.map do |num|      # => [[1, 1, 2, 3], [4, 6, 8, 9]]
	  num.select do |n|    # => [1, 1, 2, 3], [4, 6, 8, 9]
	    n % 2 != 0         # => true, true, false, true, false, false, false, true
	  end                  # => [1, 1, 3], [9]
  end                   # => [[1, 1, 3], [9]]
end                     # => :remove_evens!

p remove_evens!([[1, 1, 2, 3], [4, 6, 8, 9]])  # => [[1, 1, 3], [9]]

# >> [[1, 1, 3], [9]]
