# Problem: Write a method that takes one arguement, a positive integer, and returns
# the sum of its digits.
#
# Input: An integer
# Output: Sum of integer
#       Explicit Requirements:
#       - Take integer and add each individual number together
#         ex: 123 == 6
#       - return an integer of the added values
#       - Must be a positive integer
#
# Example:
# sum(23) == 5
# sum(496) == 19
# sum(123_456_789) == 45
#
# Data Structures: integers
#
# Algorithm:
# - Create sum method definition and feed integer as arguement
# - Convert sum method into string and then split into array with local variable num
# - Iterate over array and create local total method
#   - turn num into integer and add to total
# - return total
#
# Code:

def sum(num)
  num.to_s.split('').map(&:to_i).sum
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45
