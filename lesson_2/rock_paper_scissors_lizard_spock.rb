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

def short_choice(answer)
  case answer
  when 'sp' then 'spock'
  when 'l' then 'lizard'
  when 'p' then 'paper'
  when 'r' then 'rock'
  when 'sc' then 'scissors'
  else answer
  end
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

def get_answer(choice)
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    choice = short_choice(Kernel.gets().downcase.chomp())

    if VALID_CHOICES.include?(choice)
      break
    elsif choice == 's'
      prompt("Please enter 'sc' for scissors or 'sp' for spock.")
    else
      prompt("That's not a valid choice.")
    end
  end
  choice
end

def end_game(player_wins, computer_wins)
  if player_wins == 3
    prompt("Player crowned Grand Champion.")
  elsif computer_wins == 3
    prompt("Computer's tired of winning.")
  end
end

player_wins = 0
computer_wins = 0
ties = 0

loop do
  system("clear")
  choice = get_answer(choice)
  computer_choice = VALID_CHOICES.sample

  Kernel.puts("You chose: #{choice}; Computer chose: #{computer_choice}\n")

  display_result(choice, computer_choice)

  if win?[choice].include?(computer_choice)
    player_wins += 1
  elsif win?[computer_choice].include?(choice)
    computer_wins += 1
  else
    ties += 1
  end

  score_board = <<-MSG
----------------SCORE BOARD--------------------
-----------------------------------------------
  •  Player's Score:    #{player_wins}
  •  Computer's Score:  #{computer_wins}
  •  Number of Draws:   #{ties}
-----------------------------------------------
  MSG
  puts score_board

  end_game(player_wins, computer_wins)
  break if player_wins == 3 || computer_wins == 3

  prompt("Do you want to play again?")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt("Thank you for playing, Good Bye!")
