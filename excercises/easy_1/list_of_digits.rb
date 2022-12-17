# Problem: Convert an integer into an array of integers
# Input: Integer
# Output: Array of integers
#       Explicit Requirements:
#       - Integer will get converted into list of array
#       - Integers in the tens, hundred, will be added into array going from
#         left too right.
#
# Example:
# 7 = [7]
# 375290 = [3, 7, 5, 2, 9, 0]
#
# Data Structure: Array
#
# Algorithm:
# - Initialize method definition digit_list with number parameter
# - Initialize integer array variable
# - Initialize converted_integer variable and convert into string
# - Iterate over converted_integer and feed into empty array variable
# - Convert strings in empty array variable into integer
# - Return integer array variable
#
# Code:

# def digit_list(number)
#   integer_array = []
#   number.to_s.chars.each do |num|
#     integer_array << num.to_i
#   end
# 
#   integer_array
# end

def digit_list(number)
  number.to_s.chars.map(&:to_i)
end

digit_list(12345) == [1, 2, 3, 4, 5]
digit_list(7) == [7]
digit_list(375290) == [3, 7, 5, 2, 9, 0]
digit_list(444) == [4, 4, 4]
