def word_sizes(string)
  string.split.each_with_object({}) do |key, h|
    count = string.split.select { |word| key.size == word.size }.size
    h[key.size] = count
  end
end

word_sizes('Four Score and seven.')
word_sizes('Hey diddle diddle, the cat and the fiddle!')
word_sizes("What's up doc?")
word_sizes('')
