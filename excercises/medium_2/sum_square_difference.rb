def sum_square_difference(num)
  sum, sum_of_squares = 0, 0

  1.upto(num) do |i|
    sum, sum_of_squares = sum + i, sum_of_squares + i**2
  end
  sum**2 - sum_of_squares
end

sum_square_difference(3) == 22
sum_square_difference(10) == 2640
sum_square_difference(1) == 0
sum_square_difference(100) == 25164150
