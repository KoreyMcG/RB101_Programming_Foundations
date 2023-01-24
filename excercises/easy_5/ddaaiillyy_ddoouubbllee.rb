def crunch(string)
  string.gsub(/(.)\1+/, '\1')
end

#  def crunch(string)
#    counter = 0
#    previous_letter = ''
#    new_string = []
#  
#    until counter > string.size
#      new_string << string[counter] if string[counter] != previous_letter
#  
#      previous_letter = string[counter]
#      counter += 1
#    end
#    new_string.join('')
#  end

crunch('ddaaiillyy ddoouubbllee')
crunch('4444abcabccba')
crunch('ggggggggggggggg')
crunch('a')
crunch('')
