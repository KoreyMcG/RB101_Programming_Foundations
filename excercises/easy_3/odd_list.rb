# Problem: Write a method that contains every other element of an array.
# Input: Array
# Output: Array of every other indicies.
#       Explicit Requirements:
#       - Feed an array through a method definition as an argument.
#       - Return an array featuring every other indicies starting at 0.
#
#       Implicit Requirements:
#       - Empty arrays return an empty array.
#
#       Questions:
#       - Return a new array or the same array?
#
# Example:
# oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
# oddities([]) == []
# 
# Data Structures: Arrays
#
# Algorithm:
# - Create method definition with an array parameter
# - Create empty array and assign even_indicies_array variable
# - iterate over array each with index and if index is even shovel into
# even_indicies_array
# - return even_indicies_array
# 

def oddities(array)
  even_indicies_array = []
  array.each_with_index { |x, i| even_indicies_array << x if i.even? }
  even_indicies_array
end

oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
oddities(['abc', 'def']) == ['abc']
oddities([123]) == [123]
oddities([]) == []
oddities([1, 2, 3, 4, 5]) == [1, 3, 5]
