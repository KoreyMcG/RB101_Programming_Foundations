# Problem: write a program that solicits 6 numbers from the user, then prints the
# message that describes whether or not the 6th number appears amongst the first
# 5 numbers.
# Input: 6 Integers from user
# Output: Array of first 5 numbers telling you if 6th number appeared.
#       Explicit Requirements:
#       - Get 6 numbers from user
#       - Compare the 6th number with the first 5 numbers and describe if it
#       appears in array of first 5 numbers.
#
#       Implicit Requirements:
#       - First 5 numbers saved to array database
#       - Array is returned to user.
#       - Validate user input is a number.
#
# Example:
# get: 25, 15, 20, 17, 23 from user
#
# Output: the number 17 appears in [25, 15, 20, 17, 23].
#
# Algorithim:
# - Create empty array called user_input_numbers
# - Loop until empty array size is equal to 5
#   - Loop validation: is_a_number?
#     - assign number = Get input data and validate input is a number 
#     - if input data is a number shovel into user_input_numbers
#     - Else 'Try again'
#
# Loop number validation:
#   - create variable compare_sixth_number and get user input
#   - check valid number if not redo
#
# - check to see if compare_sixth_number is in user_input_numbers
# - Output message to user (true or false)
#
# Code:

def number_valid?(num)
  num.to_i.to_s == num
end

user_input_numbers = []

# Gather user_input_numbers numbers 

until user_input_numbers.size == 5
  number = ''

  puts "==> Enter the #{user_input_numbers.size + 1} number:"
  loop do
  number = gets.chomp

  break if number_valid?(number)
  puts '==> Please enter a valid number.'
  end

  user_input_numbers << number.to_i
end

# Get sixth_number and check validation
sixth_number = ''

loop do
  puts "==> Enter the last number:"
  sixth_number = gets.chomp

  break if number_valid?(sixth_number)
end

if user_input_numbers.include?(sixth_number.to_i)
  puts "The number #{sixth_number} appears in #{user_input_numbers}."
else
  puts "The number #{sixth_number} does not appear in #{user_input_numbers}."
end
