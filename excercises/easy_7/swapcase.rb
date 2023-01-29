# Problem: Swap the letters in the swing if its capital make it lowercase and
# vice versa.
#
# Assign 'A'..'Z' to a CONSTANT convert to an array
# Assign 'a'..'z' to a CONSTANT convert to an array
# Convert string object into array datastructure seperated by letters

CAPITALS = ('A'..'Z').to_a
LOWER_CASE = ('a'..'z').to_a

def swapcase(string)
  string.split(//).map do |letter|
    if CAPITALS.include?(letter)
      index = CAPITALS.index(letter)
      letter = LOWER_CASE[index]
    elsif LOWER_CASE.include?(letter)
      index = LOWER_CASE.index(letter)
      letter = CAPITALS[index]
    else
      letter
    end
  end.join
end

swapcase('CamelCase') == 'cAMELcASE'
swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
