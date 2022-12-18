puts 'What is your age?'
age = gets.chomp.to_i

puts 'At what age would you like to retire?'
retirement = gets.chomp.to_i

puts "It's #{Time.now.year}. You will retire in #{Time.now.year + retirement}."
puts "You only have #{retirement - age} years to go!"
