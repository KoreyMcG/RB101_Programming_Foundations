words = "the flintstones rock"  # => "the flintstones rock"

words = words.split.map { |word| word.capitalize }.join(" ")  # => "The Flintstones Rock"

words  # => "The Flintstones Rock"
