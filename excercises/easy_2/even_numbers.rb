# Problem: print all even numbers inclusively to the console, with each number
# on a seperate line.
# Input: a range from 1-99
# Output: Print each even number to console
#
# Example:
# even_number(1..99) => 2, 4, 6, 8, 10, ..., 98
#
# Data Structures: a range
#
# Algorithm:
# - Create range from 1..99
# - Loop through range creating local variable num
# - If num is even print to console
# - Add new line after each successful print
#
# Code:

(1..99).each { |num| puts num if num.even? }
