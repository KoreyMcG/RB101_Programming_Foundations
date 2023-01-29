#  def staggered_case(string)
#    new_string = ''
#    index = 0
#    counter = 0
#  
#    loop do
#      string[counter]
#      if !!string[counter].match(/[A-Z]/i) && index.even?
#        new_string << string[counter].upcase
#        index += 1
#      elsif !!string[counter].match(/[A-Z]/i) && index.odd?
#        new_string << string[counter].downcase
#        index += 1
#      else
#        new_string << string[counter]
#      end
#      counter += 1
#      break if counter == string.size
#    end
#    new_string
#  end

#  CAPITALS = ('A'..'Z').to_a
#  LOWER_CASE = ('a'..'z').to_a
#  
#  def staggered_case(string)
#    new_string = ''
#    counter = 0
#    index = 0
#  
#    loop do
#      letter = string[counter]
#      if (CAPITALS.include?(letter) || LOWER_CASE.include?(letter)) && index.odd?
#        new_string << letter.downcase
#  
#        index += 1
#      elsif CAPITALS.include?(letter) || LOWER_CASE.include?(letter) && index.even?
#        new_string << letter.upcase
#  
#        index += 1
#      else
#        new_string << letter
#      end
#  
#      counter += 1
#      break if counter == string.size
#    end
#    new_string
#  end

def staggered_case(string)
  result = ''
  need_upper = true
  string.chars.each do |char|
    if char =~ /[a-z]/i
      if need_upper
        result += char.upcase
      else
        result += char.downcase
      end
      need_upper = !need_upper
    else
      result += char
    end
  end
  result
end

staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
staggered_case('ALL_CAPS') == 'AlL_cApS'
staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'
