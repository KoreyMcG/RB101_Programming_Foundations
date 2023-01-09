# Problem: Leap years occur in every year that is divisible by 4, unless the
# year is also divisible by 100. If they year is divisible by 100, then it is
# not a leap year unless the year is evenly divisible by 400. Assume this rule
# is good for any year greater than 0. Write a method that takes any year greater
# than 0 as input and returns true if it is a leap year, false if not.
# Input: Integer ( The Year )
# Output: Boolean ( True or False )
#       Explicit Requirements:
#       - Create method definition that takes year integer input
#       - Leap years occur in every year that is divisible by 4; unless it is
#       also divisible by 100; with the exception of being divisible by 400.
#       - Calculate any number greater than 0
#
# Example:
# leap_year?(2016) == true
# leap_year?(2015) == false
# leap_year(1) == false
# leap_year(400) == true
#
# Data Structures = Integers
#
# Algorithm
# - Create leap_year? method definition with year as parameter
# - Create leap year equation.
#   - ((year % 4) == 0 && (year % 100) != 0) || (year % 400) == 0
# - Feed year argument into equation
#
# Code:

def leap_year?(year)
  ((year % 4) == 0 && (year % 100) != 0) || (year % 400) == 0
end

leap_year?(2016)
leap_year?(2015)
leap_year?(2100)
leap_year?(2400)
leap_year?(240000)
leap_year?(240001)
leap_year?(2000)
leap_year?(1900)
leap_year?(1752)
leap_year?(1700)
leap_year?(1)
leap_year?(100)
leap_year?(400)
