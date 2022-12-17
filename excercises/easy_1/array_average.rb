# Problem: Write a method that takes one arguement, an array containing integers,
# and returns the average of all numbers in the array. The array will never be
# empty and the numbers will always be positive integers. Your result should also
# be an integer.
#
# Input: An array of integers
# Output: Median value of all integers
#       Explicit Requirments:
#       - Takes the average of an array
#       - Returns the average value as an integer
#       - Array should never be empty
#
#       Questions:
#       - What should happen if a value is empty?
#
# Example:
#
# average([1, 6]) = 3
# average([1, 5, 87, 45, 8, 8]) == 25
#
# Data Structures: Array to integer
#
# Algorithm:
# - initiate method definition average with array as arguement
# - Take total of array
# - divide by arguement size
# - return value
#
# Code:

def average(array)
  array.sum / array.size
end

average([1, 6]) == 3
average([1, 5, 87, 45, 8, 8]) == 25
average([9, 47, 23, 95, 16, 52]) == 40
