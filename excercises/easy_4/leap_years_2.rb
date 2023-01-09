# Problem: Leap years occur in every year that is divisible by 4, unless the
# year is also divisible by 100. If they year is divisible by 100, then it is
# not a leap year unless the year is evenly divisible by 400. Assume this rule
# is good for any year greater than 0. Write a method that takes any year greater
# than 0 as input and returns true if it is a leap year, false if not.
#
# Modify to feature Julian Calender which all years % 4 == 0 are leap years starting
# from years 0 to 1752
#
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
  if year >= 1752                                                # => true, true, true, true, true, true, true, true, true, false, false, false, false
    ((year % 4) == 0 && (year % 100) != 0) || (year % 400) == 0  # => true, false, false, true, true, false, true, false, true
  else
    year % 4 == 0                                                # => true, false, true, true
  end                                                            # => true, false, false, true, true, false, true, false, true, true, false, true, true
end                                                              # => :leap_year?

leap_year?(2016)    # => true
leap_year?(2015)    # => false
leap_year?(2100)    # => false
leap_year?(2400)    # => true
leap_year?(240000)  # => true
leap_year?(240001)  # => false
leap_year?(2000)    # => true
leap_year?(1900)    # => false
leap_year?(1752)    # => true
leap_year?(1700)    # => true
leap_year?(1)       # => false
leap_year?(100)     # => true
leap_year?(400)     # => true
