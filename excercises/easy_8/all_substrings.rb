def substrings(string)
  array = []
  counter = 0
  string = string.chars
  
  loop do
    word = ''
    (counter...string.size).each do |letter|
      word += string[letter]
      array << word
    end

    counter += 1
    break if counter == string.size
  end
  array
end

substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]
