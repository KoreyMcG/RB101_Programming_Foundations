def double_consonants(string)
  string.chars.map { |l| l.match(/[a-z&&[^aeiou]]/i) ? l += l : l }.join
end

double_consonants('String') == "SSttrrinngg"
double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
double_consonants("July 4th") == "JJullyy 4tthh"
double_consonants('') == ""
