# Problem: Write a method that searches for all mulitples of 3 or 5 that lie
# between 1 and some other number, and then computes the sum of those multiples.
# For instance, if the supplied number is 20, the result should be 98:
# (3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20). you may assume the number passed in
# is an integer greater than 1.
#       Explicit Requirements:
#       - Pass in an integer to be the end of the sum.
#       - Calculate all multiples of 3 until end integer (20)
#         - 3, 6, 9, 12, 15, 18
#       - Calculate all multiples of 5 until end integer (20)
#         - 5, 10, 15, 20
#       - Return sum of both multiples
#
#       Implicit Requirments:
#       - Same integers are not counted twice i.e. 15 shows up in both multiples
#       3 and 5 but is only added once.
#
# Example:
# multisum(3) == 3
# multisum(5) == 8
# multisum(10) == 33
# multisum(1000) == 234168
#
# Data Structures: Array
#
# Algorithm:
# - Create method definition multisum( N parameter )
# - Create multiple array = []
# - Add multiples of 3 into multiple array until the last number is greater
#   than N value.
# - Add multiples of 5 into multiple array until the last number is greater
#   than N value
# - Sum and return multiple array
#
# Code:

def multisum(n)
  multiple = []
  0.step(by: 3, to: n) { |i| multiple << i if i > 0 }
  0.step(by: 5, to: n) { |i| multiple << i if i > 0 }
  multiple.sum
end

multisum(3)
multisum(5)
multisum(10)
multisum(1000)
