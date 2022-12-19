# Problem: Write a program that prompt the user for two positive integers, and then
# prints the results of the following operations on those two numbers:
# Addition, Subtraction, product, quotient, remainder, and power.
# Input: Two integers
# Output: a bunch of mathematical operations
#       Explicit Requirements:
#       - Enter two positive integers
#       - Don't worry about validation
#
# Example:
# 23, 17:
# 23 + 17 = 40
# 23 - 17 = 6
# 23 * 17 = 291
# 23 / 17 = 1
# 23 % 17 = 6
# 23 ** 17 = 1410500.....
#
# Data Structures: integers
#
# Algorithm:
# - Assign variable number_one and get input
# - Assign variable number_two and get input
# - Assign array containing operators
# - Run it through each operator and output message
#
# Code:

operators = %w( + - * / % ** )

puts '==> Enter the first number:'
number_one = gets.chomp.to_i

puts '==> Enter the second number:'
number_two = gets.chomp.to_i

operators.each do |operation|
  result = number_one.send(operation, number_two)
  puts "==> #{number_one} #{operation} #{number_two} = #{result}."
end
