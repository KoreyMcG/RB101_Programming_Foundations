# Problem: Write a method that takes two strings as arguments, determines the 
# longest of the two strings, and then returns the result of concatenating the
# shorter string, the longer string, and the shorter string once again. You may
# assume that the strings are of different lengths.
# Input: Two string objects
# Output: Concatenated string object featuring short + long + short
#       Explicit Requirements:
#       - Feed two string objects into method definition.
#       - Return concatenated string object
#
#       Implicit Requirements:
#       - Empty strings are treated as void.
#
#       Questions?
#       - How are spaces treated
#       - How is case sensitivity treated
#
# Examples:
# short_long_short('abc', 'defgh') == 'abcdefghabc'
# short_long_short('abcde', 'fgh') == 'fghabcdefgh'
# 
# Data Structures: Strings
#
# Algorithm:
# - Create method definition short_long_short and feed two string arguments
# - Compare string argument sizes.
# - If string 1 > string 2 then return string1 + string2 + string1
# - Else return string2 + string1 + string2
#
# Code:

def short_long_short(str1, str2)
  str1.size < str2.size ? (str1 + str2 + str1) : (str2 + str1 + str2)
end

short_long_short('abc', 'defgh')
short_long_short('abcde', 'fgh')
short_long_short('', 'xyz')
