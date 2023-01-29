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

def palindromes(string)
  substrings = substrings(string)
  palindromes = []

  substrings.each do |word|
    palindromes << word if word == word.reverse && word.size > 1
  end

  palindromes
end

palindromes('abcd') == []
palindromes('madam') == ['madam', 'ada']
palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]
