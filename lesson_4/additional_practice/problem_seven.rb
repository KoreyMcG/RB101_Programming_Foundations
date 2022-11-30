statement = "The Flintstones Rock"

the_hash = statement.chars.each_with_object({}) do |letter, hash|
             hash[letter] = statement.count(letter)
           end

the_hash
