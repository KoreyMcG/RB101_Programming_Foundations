words = "the flintstones rock"  # => "the flintstones rock"

words.split(/ /).map! { |word| word.capitalize }.join(' ')  # => "The Flintstones Rock"
