# Problem: Write a method that takes a string of digits, and returns the appropriate
# number as an integer. You may not use any of the methods mentioned above. (.to_i, Integer())
#         Explicit Requirements:
#         - Take a string of numbers and convert manually to integers
#         - Don't use rubys built in methods to do so
#         Questions?
#         - How does it handle float values or negative values
#
# Example:
# string_to_integer('4321') == 4321
# string_to_integer('570') == 570
#
# Data Structures: Array?
#
# Algorithm:
# - Create string_to_integer method with a string_array as a parameter
# - Create split string into a new array of every character
# - Create converter hash if '1' then 1 ect. 
#   - Do so from 0-9
# - create empty return_num
# - create multiplier variable = 1
# - Iterate over string_array
# - Reassign num_return = converted_number
# - return num_return
# Code:

CONVERTER = { 
  '0' => 0, '9' => 9, '8' => 8, '7' => 7, '6' => 6, 
  '5' => 5, '4' => 4, '3' => 3, '2' => 2, '1' => 1 
}

def string_to_integer(string_array)
  num_return = 0
  multiplier = 1
  string_array.chars.reverse.each_with_index do |num, idx|
    if idx == 0
      num_return += CONVERTER[num]
    else
      num_return += CONVERTER[num]*(multiplier*=10)
    end
  end
  
  num_return
end

string_to_integer('4321')
string_to_integer('570')
