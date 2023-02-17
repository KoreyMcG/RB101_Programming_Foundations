NUMBERS = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
STRING_NUMS = [
  'zero', 'one', 'two', 'three', 'four',
  'five', 'six', 'seven', 'eight', 'nine'
]

def word_to_digit(string)
  STRING_NUMS.each_with_index do |word, index|
    string.gsub!(/#{word}/i, NUMBERS[index].to_s)
  end
  string
end

word_to_digit('Please call me at five five five one two three four. thanks.')
