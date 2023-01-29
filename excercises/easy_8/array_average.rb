#  def average(array)
#    array.inject(:+) / array.size
#  end

def average(array)
  running_total = 0
  array.map { |n| running_total += n }
  running_total / array.size
end

average([1, 6]) == 3
average([1, 5, 87, 45, 8, 8]) == 25
average([9, 47, 23, 95, 16, 52]) == 40
