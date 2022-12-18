puts "What is the bill?"
bill = gets.chomp.to_i

puts "What is the tip percentage?"
tip_percentage = gets.chomp.to_i

tip = bill * (tip_percentage.to_f / 100)

total = bill + tip

puts "The tip is #{tip}"
puts "The total is #{total.round(2)}"
