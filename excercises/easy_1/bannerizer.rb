def print_in_box(string)
  spaces = ''
  lines = ''
  string.size.times { spaces << ' ' }
  string.size.times { lines << '-'}

  puts "+-#{lines}-+"
  puts "| #{spaces} |"
  puts "| #{string} |"
  puts "| #{spaces} |"
  puts "+-#{lines}-+"
end

print_in_box('To boldly go where no one has gone before.')
print_in_box('')
