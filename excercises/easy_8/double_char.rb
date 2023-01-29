def repeater(string)
  string.chars.map { |letter| letter += letter }.join
end

repeater('Hello') == "HHeelllloo"
repeater("Good job!") == "GGoooodd  jjoobb!!"
repeater('') == ''
