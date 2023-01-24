def swap(string)
  string.split(' ').map do |word|
    word.size > 1 ? word[-1] + word[1..-2] + word[0] : word
  end.join(' ')
end

swap('Oh what a wonderful day it is')
swap('Abcde')
swap('a')
