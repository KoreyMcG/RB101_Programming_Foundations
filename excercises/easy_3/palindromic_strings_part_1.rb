# Problem: Write a method that returns true if the string passed as an arguement
# is a palindrome, false otherwise. A palindrome reads the same forward and backward.
# For this excercise, case matters as does punctuation and spaces.
# Input: A string
# Output: A boolean value
#       Explicit Requirements:
#       - Input takes string value
#       - Output returns true is input string reads same forward and backward
#       - Case sensitivity matters. 'Sus' != 'sus'
#       - Spaces matter. ex: 'el le' != 'elle'
#
# Example:
# palindrome?('madam') == true
# palindrome?('madam i'm adam) == false
# 
# Data Structures: string value
#
# Algorithm:
# - Create method definition palindrome? and feed string in as arguement
# - check if parameter is equal to parameter.reverse?
# - return boolean
# 
# Code:

def palindrome?(string)
  string == string.reverse
end

palindrome?('madam') == true
palindrome?('Madam') == false
palindrome?("madam i'm adam") == false
palindrome?("356653")
