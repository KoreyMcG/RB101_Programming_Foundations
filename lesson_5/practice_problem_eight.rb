hsh = {
  first: ['the', 'quick'],
  second: ['brown', 'fox'],
  third: ['jumped'],
  fourth: ['over', 'the', 'lazy', 'dog']
}

hsh.each do |_, value|
  value.each do |word|
    word.chars.each do |letter|
      puts letter if 'AEIOUaeiou'.include?(letter)
    end
  end
end
