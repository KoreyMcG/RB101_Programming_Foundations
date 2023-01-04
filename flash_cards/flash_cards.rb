require "./card_data/ruby_style.rb"
require "./card_data/variable_scope.rb"

def pick_question(user_answer, catagories)
  catagories[user_answer].sample
end

catagories = {
  ruby_style: RUBY_STYLE_DATA,
  variable_scope: VARIABLE_SCOPE_DATA
}

list_of_catagories = catagories.keys.join(', ').gsub('_', ' ')

loop do
system('clear')
puts "Please select a catagory to study: #{list_of_catagories}"
catagory = gets.chomp.gsub(' ', '_').to_sym
last_flash_card = ''
break_answer = ''

  loop do
    system('clear')
    flash_card = pick_question(catagory, catagories)
    next if flash_card == last_flash_card
    puts flash_card[0]
    puts "Please type your answer below:"
    user_answer = gets.chomp
    puts
    puts flash_card[1]
    puts
    puts "Would you like another question? ( Type 'Y' to continue, 'N' to quit, 'C' to change catagories )"
    break_answer = gets.chomp.downcase
    break if break_answer.start_with?('n') || break_answer.start_with?('c')
    last_flash_card = flash_card
  end

break if break_answer.start_with?('n')
end
