VALID_CHOICES = %w(rock paper scissors lizard spock)

def prompt(message)
  Kernel.puts("=> #{message}")
end

def win?
  win_conditions = {
    'rock' => ['scissors', 'lizard'],
    'scissors' => ['lizard', 'paper'],
    'spock' => ['scissors', 'rock'],
    'lizard' => ['spock', 'paper'],
    'paper' => ['rock', 'spock']
  }
end

def display_result(player, computer)
  if win?[player].include?(computer)
    prompt("You won!")
  elsif win?[computer].include?(player)
    prompt("Computer won!")
  else
    prompt("It's a tie!")
  end
end

loop do
  choice = ''
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    choice = Kernel.gets().chomp()

    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("That's not a valid choice.")
    end
  end

  computer_choice = VALID_CHOICES.sample

  Kernel.puts("You chose: #{choice}; Computer chose: #{computer_choice}")

  display_result(choice, computer_choice)

  prompt("Do you want to play again?")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt("Thank you for playing, Good Bye!")
