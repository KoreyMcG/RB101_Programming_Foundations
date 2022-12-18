# Problem: Write a program that asks the user to enter an integer greater than 0,
# then asks if the user wants to determine the sum or product of all numbers
# between 1 and the entered integer.
# Input: a valid number greater than 0.
# Output: the sum of the integers if 's', or the product of the integers if 'p'
#       Explicit Requirements:
#       - Must enter valid number greater than 0.
#       - Must enter letter to determine how to computer.
#       - Must computer all integers starting at 1 to the desired number
#
#       Implicit requirements:
#       - Displays answer to user.
#
#       Questions:
#       - How does it handle input validation?
#       - Is it case sensitive?
#       - Does it continue to loop until user is finished calculating?
#
# Example:
# >> Please enter an integer > 0:
# 5
# >> Enter 's' to compute the sum, 'p' to compute the product.
# s
# The sum of the integers between 1 and 5 is 15.
#
# Data Structures: a range
#
# Algorithm:
# Create calcuation_request = ''
# create user_number = ''
#
# - Create number validation loop
# - Display welcome screen asking for user input.
#   - Get user input and reassign variable user_number.
#   - Check number validation:
#     - If number to_string to_number != number then:
#       - Display - invalid number try again and then go back to beginning loop
# - Break if user_number valid
#
# - Create input validation loop
# - Display computation request: 's' sum or 'p' product
#   - Get user input and save to variable calulation_request.
#   - Check input validation:
#     - If calculation_request != 's' or 'p' then:
#       - Display invalid request and go back to loop
#
# - Create range starting from 1..user_number and begin loop with local variable
# num
# - On each iteration check calulation_request if 's' then add each num to sum
# and if it is 'p' then multiply each num to product.
# - Display calculation to user if 's' show sum if 'p' show product.
#
# Code:
user_number = ''
calculation_request = ''

puts '>> Please enter an integer greater than 0:'
loop do
  user_number = gets.chomp.to_i

  break if (user_number.to_s.to_i == user_number) && user_number > 0
  puts '>> Invalid number, please enter a valid number greater than 0.'
end

puts ">> Enter 's' to computer the sum, 'p' to compute the product."
loop do
  calculation_request = gets.chomp

  break if calculation_request.downcase == 's' || calculation_request.downcase == 'p'
  puts "Invalid option, try again."
end

if calculation_request == 's'
  sum = (1..user_number).inject(:+)
  puts "The sum of the integers between 1 and #{user_number} is #{sum}."
else
  product = (1..user_number).inject(:*)
  puts "The product of the integers between 1 and #{user_number} is #{product}."
end
