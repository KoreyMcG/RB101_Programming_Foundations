# Problem: Write a method that takes one argument containing one or more words
# and returns the given string with words that contain five or more characters
# reversed. Each string will consist of only letters and spaces. Spaces should
# be included only when more than one word is present.
#
# Input: A string (sentence or word)
# Output: String with each substring reversed if the word count is > 5
#       Explicit Requirements:
#       - Return value is a string with substrings reversed if substring > 5
#       - Each string will only consist of letters and spaces.
#       - Spaces included only when more than one word is present.
#
#       Implicit Requirements:
#       - Case remains the same after reverse
#       - Sentence structure is not reversed only the substring letters
#
# Example:
# reverse_words('Professional') == 'lanoisseforP'
# reverse_words('Walk around the block') == 'Walk dnuora the kcolb'
# reverse_words('Launch School') == 'hcnuaL loohcS'
#
# Data Structure: string, array when iterating
#
# Algorithm:
# - Create method definition reverse_words with string parameter.
# - Create string_array variable equal to string arguement as an array.
# - Iterate over string_array assigning local variable word.
# - If word is greater than or equal to 5 reverse it
# - return new array and join with a space
#
# Code:

def reverse_words(string)
  string.split.map do |word|              # => ["Professional"], ["Walk", "around", "the", "block"], ["Launch", "School"]
    word.size >= 5 ? word.reverse : word  # => "lanoisseforP", "Walk", "dnuora", "the", "kcolb", "hcnuaL", "loohcS"
  end.join(' ')                           # => "lanoisseforP", "Walk dnuora the kcolb", "hcnuaL loohcS"
end                                       # => :reverse_words

reverse_words('Professional') == 'lanoisseforP'                    # => true
reverse_words('Walk around the block') == 'Walk dnuora the kcolb'  # => true
reverse_words('Launch School') == 'hcnuaL loohcS'                  # => true
