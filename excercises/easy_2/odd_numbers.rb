# Problem: Print all odd numbers from 1 to 99, inclusive, to the console, with
# each number on a seperate line.
# Input: a range
# output: all odd numbers to 99
#
# Example:
# print_odd(1..99) =>  1, 3, 5, 7, 9, ..., 99
#
# Data structures: a range
#
# Algorith:
# - Create range from 1 to 99
# - Loop over range creating local variable num
# - print num is num is odd.
# - Add new line after each print
#
# Code:

# (1..99).each { |num| puts num if num.odd? }

# 1.upto(99) { |num| puts num if num.odd? }

puts (1..99).select { |num| num.odd? }
