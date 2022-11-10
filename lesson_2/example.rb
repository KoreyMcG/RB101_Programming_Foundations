def counter(wins, computer_wins)
  wins += 1                       # => 1, 3, 4, 5, 6
  computer_wins += 1              # => 2, 3, 4, 5, 6
end                               # => :counter

player_wins = 0    # => 0
computer_wins = 0  # => 0

loop do
  computer_wins += 1                                 # => 1,     2,     3,     4,     5
  player_wins = counter(player_wins, computer_wins)  # => 2,     3,     4,     5,     6
  break if computer_wins == 5                        # => false, false, false, false, true
end                                                  # => nil

player_wins  # => 6
