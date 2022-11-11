def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")   # => converts string to array
  return false if dot_separated_words.size != 4   # => validates array size == 4
  while dot_separated_words.size > 0 do           # => loops until array is 0
    word = dot_separated_words.pop                # => pops array and returns value assigning it too local variable word
    return false unless is_an_ip_number?(word)    # => if is_an_ip_number?(word) returns true keeps going else it returns false
  end
  return true
end

dot_separated_ip_address?("10.4.5.11")
