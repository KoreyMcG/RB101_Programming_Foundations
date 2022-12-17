# Problem: write a method that takes two arguements, a positive integer and a
# boolean, and calculates the bonus for a given salary. If the boolean is 'true'
# the bonus should be half of the salary. If the boolean is 'false', the bonus
# should be 0
#
# Input: Positive Integer, and a boolean
# Output: Integer
#       Explicit Requirements:
#       - Define method bonus that takes two arguements, a salary and boolean.
#       - If boolean is true than bonus is half the salary.
#       - If boolean is false than bonus is 0
#       - Output is an integer
#
# Example:
# calculate_bonus(2800, true) == 1400
# calculate_bonus(1000, false) == 0
# calculate_bonus(50000, true) == 25000
#
# Data Structures: Integers
#
# Algorithm:
# - Create method definition calculate_bonus with with two arguements salary and
# boolean
# - if true take salary / 2 and return
# - if false return 0
#
# Code:

def calculate_bonus(salary, get_bonus)
  get_bonus ? (salary / 2) : 0
end

calculate_bonus(2800, true) == 1400
calculate_bonus(1000, false) == 0
calculate_bonus(50000, true) == 25000
