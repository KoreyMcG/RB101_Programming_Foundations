# Problem: Write a method that counts the number of occurences of each element
# in a given array.
#
# Input: An array of strings
# Output: Hash table with Key featuring string and the value being the number 
# of times that key was in the array.
#       Explicit Requirements:
#       - Iterate through array of string 'words' and count how many times that
#       word appears.
#       - The words in the array are case sensitive 'suv' != 'Suv' || 'SUV'
#       - Print the Key with the number of occurences.
#
#       Implicit Requirements:
#       - Output is a hash table using the string 'word' as the key and the
#       'number of occurences' as the value.
#
#       Questions:
#       - How should spaces in the string be handled? Should they be converted
#       into underscores to appease the key value or should you use the first
#       word in the string as the key.
#
# Example:
# vehicles = [
#   'car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle',
#   'car', 'truck'
# ]
#
# count_occurrences(vehicles)
#
# car => 4
# truck => 3
# SUV => 1
# motorcycle => 2
#
# Data Structures: Array input Hash output
#
# Algorithm:
# - create method definition count_occurences and feed array parameter through it.
# - create empty hash table totals
# - iterate over array
#   - assign local variable word
#   - Add word hash key to 'totals' equal to count of words found
# - Iterate over hash table
# - Put each key => value
#
# Code:

def count_occurences(array)
  totals = {}
  array.each do |word|
    totals[word] = array.count(word)
  end

  totals.each { |key, value| puts "#{key} => #{value}"}
end

vehicles = [
  'car', 'car', 'truck', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car',
  'truck'
]

count_occurences(vehicles)
