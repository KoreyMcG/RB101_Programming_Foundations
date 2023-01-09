def running_totals(array)
  array.inject([]) { |array, num| array << array.last.to_i + num }
end

# def running_totals(array)
#   sum = 0
#   array.map { |num| sum += num }
# end

# def running_totals(array)
#   sum = 0
#   array.each_with_object([]) do |num, new_array|
#     new_array << sum += num
#   end
# end

running_totals([2, 5, 13]) == [2, 7, 20]
running_totals([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
running_totals([3]) == [3]
running_totals([]) == []
