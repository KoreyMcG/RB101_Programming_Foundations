puts 'Enter the length of the room in meters:'
length = gets.chomp.to_i

puts 'Enter the width of the room in meters:'
width = gets.chomp.to_i

area = width * length

puts "The area of the room is #{area.to_f} square meters (#{(area.to_f*10.7639).round(2)} feet)."
