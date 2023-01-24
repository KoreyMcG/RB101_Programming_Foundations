def include?(array, n)
  array.each { |e| return true if e == n }
  false
end

include?([1, 2, 3, 4, 5], 3) == true
include?([1, 2, 3, 4, 5], 6) == false
include?([], 3) == false
include?([nil], nil) == true
include?([], nil) == false
