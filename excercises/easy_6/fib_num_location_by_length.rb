def find_fibonacci_index_by_length(n)
  array = [1, 1]
  counter = 2

  loop do
    array << (array[-1] + array[-2])

    counter += 1
    break if array.last.to_s.size == n
  end

  counter
end

p find_fibonacci_index_by_length(2) == 7
p find_fibonacci_index_by_length(3) == 12
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847
