START_MATCH = ['(', '{', '[' ]
END_MATCH = [')', '}', ']' ]
 
def balanced?(string)
  counter = 0
  string.chars.each do |l|
    counter += 1 if START_MATCH.include?(l)
    counter -= 1 if END_MATCH.include?(l)
    break if counter < 0
  end

  counter.zero? && string.count("'").even? && string.count("\"").even?
end

balanced?("What \" \" {(is)} this?") == true
balanced?('What is) this?') == false
balanced?('What (is this?') == false
balanced?('((What) (is this))?') == true
balanced?('((What)) (is this))?') == false
balanced?('Hey!') == true
balanced?(')Hey!(') == false
balanced?('What ((is))) up(') == false
