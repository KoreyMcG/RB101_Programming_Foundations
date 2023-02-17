def fibonacci(n)
  counter = 0
  array = [1, 1]

  loop do
    array << current_num = array[counter] + array[counter + 1]

    counter += 1
    return current_num if counter == n - 2
  end
end

[1, 1, 2, 3, 5, 8, 13]

fibonacci(5)
fibonacci(12)
fibonacci(20)
fibonacci(100)
fibonacci(100_001)
