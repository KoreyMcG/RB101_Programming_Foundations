def reverse_words(string)
  string.split.map { |word| word.size >= 5 ? word.reverse : word }.join(' ')
end

reverse_words('Professional')
reverse_words('Walk around the block')
reverse_words('Launch School')
