famous_words = "Seven years ago..."  # => "Seven years ago..."

"Four score and " + famous_words  # => "Four score and Seven years ago..."

"Four score and #{famous_words}"  # => "Four score and Seven years ago..."

famous_words.prepend("Four score and ")  # => "Four score and Seven years ago..."

"Four score and " << famous_words  # => "Four score and Four score and Seven years ago..."
