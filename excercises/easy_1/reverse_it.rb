# Problem: Write a method that takes one arguement, a string, and returns a new
# array with the words in reverse order.
#
# Input: A String
# Output: String in reverse
#       Explicit Requirements:
#       - Input a string through a method definition.
#       - Output the string in reverse with the words still legible
#
#       Implicit Requirements:
#       - Case sensitivity remains the same
#       - Spaces are removed during output
#
# Example:
# reverse_sentence('Hello World') == 'World Hello'
# reverse_sentence('Reverse these words') == 'words these Reverse'
#
# Data Structures: String, Array to reverse
#
# Algorithm
# - Create method definition reverse_sentence(string)
# - create empty reverse_array variable
# - convert string into array splitting by space
# - loop until reverse_array size is equal to string size
# - remove last word into reverse_array variable
# - output reverse_array.join(' ') 
#
# Code:

# def reverse_sentence(string)
#   reverse_array = []
#   string_array = string.split(' ')
#   until reverse_array.size == string.split(' ').size
#     reverse_array << string_array.pop
#   end
# 
#   reverse_array.join(' ')
# end

def reverse_sentence(string)
  string.split.reverse.join(' ')
end

reverse_sentence('Hello World') == 'World Hello'
reverse_sentence('Reverse these words') == 'words these Reverse'
reverse_sentence('') == ''
reverse_sentence('     ') == ''
