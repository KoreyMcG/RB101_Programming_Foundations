#  def leading_substrings(string)
#    substrings = []
#    previous_letter = ''
#    string.chars.each do |letter|
#      previous_letter += letter
#      substrings << previous_letter
#    end
#    substrings
#  end

def leading_substrings(string)
  result = []
  0.upto(string.size - 1) do |index|
    result << string[0..index]
  end
  result
end

leading_substrings('abc') == ['a', 'ab', 'abc']
leading_substrings('a') == ['a']
leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
