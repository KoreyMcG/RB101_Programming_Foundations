require "./card_data/ruby_style.rb"
require "./card_data/variable_scope.rb"
require "./card_data/methods.rb"
require "./card_data/precedence.rb"

def pick_question(user_answer, catagories)
  catagories[user_answer].sample
end

def convert_user_answer(user_answer, catagories)
  catagories.keys.grep(/^#{user_answer}/).pop
end

catagories = {
  ruby_style: RUBY_STYLE_DATA,
  variable_scope: VARIABLE_SCOPE_DATA,
  methods: METHOD_DATA,
  precedence: PRECEDENCE_DATA
}

list_of_catagories = catagories.keys.join("\n - ").gsub('_', ' ')

loop do
system('clear')
puts "Please select a catagory to study:\n - #{list_of_catagories}"
catagory = convert_user_answer(gets.chomp, catagories)
last_flash_card = ''
break_answer = ''

  loop do
    system('clear')
    flash_card = pick_question(catagory, catagories)
    puts "Current Catagory: #{catagory.to_s.gsub('_', ' ').capitalize}"
    next if flash_card == last_flash_card
    puts flash_card[0]
    puts "Please type your answer below ( Type 'Q' to quit, 'C' to change catagories )"
    user_answer = gets.chomp
    break if user_answer.downcase == 'q' || user_answer.downcase == 'c'
    puts flash_card[1]
    puts "Would you like another question? ( Type 'Y' to continue, 'Q' to quit, 'C' to change catagories )\n"
    break_answer = gets.chomp.downcase
    break if break_answer.start_with?('q') || break_answer.start_with?('c')
    last_flash_card = flash_card
  end

break if break_answer.start_with?('q')
end
