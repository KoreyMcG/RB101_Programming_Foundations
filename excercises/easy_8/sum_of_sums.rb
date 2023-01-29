#  def sum_of_sums(array)
#    accumulator = []
#    sum = 0
#  
#    array.each do |n|
#      accumulator << n
#      sum += accumulator.sum
#    end
#  
#    sum
#  end

def sum_of_sums(numbers)
  sum_total = 0
  1.upto(numbers.size) do |count|
    sum_total += numbers.slice(0, count).reduce(:+)
  end
  sum_total
end

sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2)
sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3)
sum_of_sums([4]) == 4
sum_of_sums([1, 2, 3, 4, 5]) == 35
