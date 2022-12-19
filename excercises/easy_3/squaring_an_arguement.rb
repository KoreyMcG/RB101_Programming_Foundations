# Problem: using the multiply method from the last assignment write a method that
# computes the square of its argument (the square is the result of multiplying a
# number by itself)
# Input: integer
# output: square of integer
#       Explicit Requirements:
#       - Take an integer
#       - Return the square of integer
#
# Example:
# square(5) == 25
# square(-8) == 64
#
# Data Structures: integers
#
# Algorithm:
# - Create method definition square with num parameter.
# - run square num through multiply definition
#
# Code:

def multiply(num_one, num_two)
  num_one * num_two
end

def square(num)
  multiply(num, num)
end

square(5)
