# Problem: Write a method that determines and returns the ASCII string value of
# a string passed in as an argument. The ASCII string value is the sum of the
# ASCII values of every character in the string.
#         Explicit Requirements:
#         - Sum the value of every characters ASCII value
#         - Return sum
# Example:
# ascii_value('Four score') == 984
# ascii_value('Launch School') == 1251
# ascii_value('a') == 97
# ascii_value('') == 0
#
# Data Structure = Array, strings
#
# Algorithm:
# - Convert string value into array
# - Create sum variable
# - Loop over array converting each string letter into ascii value
#   - Reassign sum += to ascii value of each character
# - return sum
#
# Code:

def ascii_value(string)
  sum = 0
  string.chars.each { |letter| sum += letter.ord }

  sum
end

ascii_value('Four score') == 984
ascii_value('Launch School') == 1251
ascii_value('a') == 97
ascii_value('') == 0

