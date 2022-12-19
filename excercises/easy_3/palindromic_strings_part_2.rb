# Problem: Write a method that returns true if the string passed as an argument
# is a palindrome, false otherwise. Method should be case insensitive, ignore all
# non-alphanumeric characters.
# Input: String
# Output: Boolean
#       Explicit Requirements:
#       - Takes a string as the input.
#       - Returns boolean value
#       - Ignores non-alphanumeric characters such as '!' and "'".
#       - Is case insensitive
#
#       Implicit Requirements:
#       - Spaces are considered non-alphanumeric.
#
# Example:
# real_palindrome?("Madam, I'm Adam") == true
# real_palindrome?('123ab321') == false
# 
# Data Structure: String
#
# Algorithm:
# - Create method definition real_palindrome?('add string parameter')
# - delete any character that is no an alpha numeric number and assign new variable
# non_alpha_numeric_string
# - Check if non_alpha_numeric_string == non_alpha_numeric_string in reverse
#
# Code:

def real_palindrome?(string)
  non_alpha_numeric_string = string.delete('^a-zA-z0-9_').downcase
  non_alpha_numeric_string == non_alpha_numeric_string.reverse
end

real_palindrome?('madam')
real_palindrome?('Madam')
real_palindrome?("madam, I'm Adam")
real_palindrome?('356653')
real_palindrome?('356a653')
real_palindrome?('123ab321')
