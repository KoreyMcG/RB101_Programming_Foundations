#  def print_anagrams(array)
#    anagram = []
#    counter = 0
#  
#    loop do
#      anagram << array.select { |word| array[counter].chars.sort == word.chars.sort }
#  
#      counter += 1
#      break if counter == array.size
#    end
#  
#    each_selection.uniq.each do |word|
#      p word
#    end
#  end

def print_anagrams(array)
  anagrams = []
  array.each do |word|
    anagrams << array.select { |w| word.chars.sort == w.chars.sort  }
  end
  anagrams.uniq.each { |w| p w }
end

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

print_anagrams(words)
