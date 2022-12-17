# Problem: Write a method that takes one argument, a positive integer, and returns
# a string of alternating 1s and 0s always starting with 1. the length of the
# string should match the given integer.
#
# Input: An integer
# Output: a string of '1010' until matching the input integer length.
#       Explicit Requirements:
#       - Use a positive integer
#       - Returns a string of alternating 1s and 0s starting with 1
#       - The string length will match the integer value
#
# Examples:
# stringy(9) == '101010101'
# stringy(6) == '101010'
#
# Data Structure: integer, string
#
# Algorithm:
# - Create a method definition called stringy
# - Create empty string variable
# - Create loop until string size equals integer arguement
#   - if string length is even insert a 1
#   - if string length is odd insert a 0
# - return string
#
# Code:

def stringy(number)
  string = ''
  until string.size == number
    string.size.even? ? string << '1' : string << '0'
  end
  string
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
