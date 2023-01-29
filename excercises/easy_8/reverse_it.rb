def reverse_sentence(string)
  string.split.reverse.join(' ')
end

reverse_sentence('Hello World') == 'World Hello'
reverse_sentence('Reverse these words') == 'words these Reverse'
reverse_sentence('') == ''
reverse_sentence('    ') == ''
