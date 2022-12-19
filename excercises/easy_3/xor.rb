# Problem: The || operator returns a truth value if either or both of it operands
# are truthy. If both operands are falsey it returns a falsey value. The &&
# operator returns a truthy value only if both of its operands are truthy, and
# a falsey value if either operand is falsey. Write a program for xor which returns
# truthy if one operand is false and the other operand is true.
# Input: Two arguements that check for a boolean statement.
# Output: Boolean
#       Explicit Requirements:
#       - One arguement has to be false, and the other true to return a 'True'
#       - method takes two boolean arguements.
#
# Example:
# xor?(5.even?, 4.even?) == true
# xor?(5.odd?, 4.odd?) == true
# xor?(5.odd?, 4.even?) == false
# xor?(5.even?, 4.odd?) == false
#
# Data Structures: Booleans
#
# Algorithm:
# - Create method definition xor? and two boolean arguements
# - Create if statement
# - If arg_one == true && arg_two == false return true
# - Else if arg_one == false && arg_two == true return true
# - else return false
#
# Code:

def xor?(a1, a2)
  #(a1 == true && a2 == false) || (a1 == false && a2 == true) ? true : false
  !!((a1 && !a2) || (!a1 && a2))
end

xor?(5.even?, 4.even?) == true
xor?(5.odd?, 4.odd?) == true
xor?(5.odd?, 4.even?) == false
xor?(5.even?, 4.odd?) == false
