# Problem: Write a method that returns true if its integer argument is palindromic,
# false otherwise. A palindromic number reads the same forwards as backwards.
# Input: Integer
# Output: Boolean showing true or false
#       Explicit Requirements:
#       - Method definition takes integer as argument.
#       - Returns boolean value dependant on if integer reads the same forward and backwards
#
#       Implicit Requirements:
#       - Single digit integers return true.
#
#       Questions?
#       - Do we need to confirm integer?
#
# Example:
# palindromic_number?(34543) == true
# palindromic_number?(5) == true
# palindromic_number?(22) == true
#
# Data Structures: Integer to string
#
# Algorithm:
# - Create method definition palindromic_number?( with integer parameter )
# - Convert integer into string assign variable integer_converted
# - check if integer_converted == integer_converted.reverse
# - Return boolean
#
# Code:
def palindromic_number?(integer)
  integer.to_s == integer.to_s.reverse  # => true, false, true, true, true
end                                     # => :palindromic_number?

palindromic_number?(34543)   # => true
palindromic_number?(123210)  # => false
palindromic_number?(22)      # => true
palindromic_number?(5)       # => true
