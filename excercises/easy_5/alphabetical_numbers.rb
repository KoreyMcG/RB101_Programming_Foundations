# Problem: Write a method that takes an Array of integers between 0-19 and
# returns an Array of those integers sorted based on the english words for each
# number.
# zero, one, two, three..ect
#         Explicit Requirements:
#         - method takes a definition
#         - returns array sorted based off the 'english word'
#         - only integers between 0-19
#         Implicit Requirements:
#         - returns integers
# Example
# alphabetical_number_sort((0..19).to_a) => [8, 18, 11, 15, 5, 4, 14, 9, 19, 1 7, 17, 6, 16, 10, 13, 3, 12, 2 , 0]
# 
# Data Structure: Array of integers
#
# Algorithm
# - Create hash table to change 8 => 'eight'
# - SET word_array to empty
# - iterate over number_array and convert to word
# - iterate over word_array and sort based off of initial letter word[0] <=> word[0]
# - convert word_array to number ( change 'eight' to 8 )
# - return word_array

NUMBERS = {
  0 => 'zero', 1 => 'one', 2 => 'two', 3 => 'three', 4 => 'four', 5 => 'five',
  6 => 'six', 7 => 'seven', 8 => 'eight', 9 => 'nine', 10 => 'ten', 11 => 'eleven',
  12 => 'twelve', 13 => 'thirteen', 14 => 'fourteen', 15 => 'fifteen',
  16 => 'sixteen', 17 => 'seventeen', 18 => 'eighteen', 19 => 'nineteen'
}

def alphabetical_number_sort(array)
  array.map { |num| NUMBERS[num] }.sort.map { |word| NUMBERS.key(word) }
end

alphabetical_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]
