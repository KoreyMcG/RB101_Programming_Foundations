CARDS = {
  ace: {
    quantity: 4,
    value: 11,
    picture: 'A '
  },
  king: {
    quantity: 4,
    value: 10,
    picture: 'K '
  },
  queen: {
    quantity: 4,
    value: 10,
    picture: 'Q '
  },
  jack: {
    quantity: 4,
    value: 10,
    picture: 'J '
  },
  ten: {
    quantity: 4,
    value: 10,
    picture: '10'
  },
  nine: {
    quantity: 4,
    value: 9,
    picture: '9 '
  },
  eight: {
    quantity: 4,
    value: 8,
    picture: '8 '
  },
  seven: {
    quantity: 4,
    value: 7,
    picture: '7 '
  },
  six: {
    quantity: 4,
    value: 6,
    picture: '6 '
  },
  five: {
    quantity: 4,
    value: 5,
    picture: '5 '
  },
  four: {
    quantity: 4,
    value: 4,
    picture: '4 '
  },
  three: {
    quantity: 4,
    value: 3,
    picture: '3 '
  },
  two: {
    quantity: 4,
    value: 2,
    picture: '2 '
  }
}

def prompt(msg)
  puts ">> #{msg}"
end

def display_hand(current_hand)
  current_hand.join(', ')
end

def deal_card(current_hand)
  loop do
    random_card = CARDS.keys.sample
    card_quantity = CARDS[random_card][:quantity]

    if card_quantity != 0
      current_hand << random_card
      CARDS[random_card][:quantity] = CARDS[random_card][:quantity] - 1
      break
    end
  end
end

def total_cards_left
  total_left = 0
  CARDS.each do |_, value|
    total_left += value[:quantity]
  end
  total_left
end

def shuffle_deck
  CARDS.map do |_, value|
    value[:quantity] = 4
  end
end

def hide_last_card(current_hand, display)
  counter = 0
  if display
    print " |  #{CARDS[current_hand[0]][:picture]}  | "
    print " |  ?   | "
  else
    current_hand.count.times do
      print " |  #{CARDS[current_hand[counter]][:picture]}  | "
      counter += 1
    end
  end
end

def display_card(current_hand, display_value)
  current_hand.count.times { print "  ------  " }
  puts
  current_hand.count.times { print " |      | " }
  puts
  hide_last_card(current_hand, display_value)
  puts
  current_hand.count.times { print " |      | " }
  puts
  current_hand.count.times { print "  ------  " }
  puts
end

def who_won?(player_total, dealer_total)
  if player_total > 21
    :player_bust
  elsif dealer_total > 21
    :dealer_bust
  elsif player_total > dealer_total
    :player_won
  elsif dealer_total > player_total
    :dealer_won
  else
    :tie
  end
end

def display_winner(result)
  case result
  when :player_won
    prompt("Player Won!")
  when :dealer_won
    prompt("Dealer Won!")
  when :player_bust
    prompt("Player Bust!")
  when :dealer_bust
    prompt("Dealer Bust!")
  when :tie
    prompt("Tie!")
  end
end

def total_hand_value(current_hand)
  total = 0
  current_hand.each do |card|
    total += CARDS[card][:value]
  end

  current_hand.select { |card| card == :ace }.count.times do
    total -= 10 if total > 21
  end

  total
end

loop do
  system('clear')
  player_hand = []
  dealer_hand = []

  2.times do
    deal_card(player_hand)
    deal_card(dealer_hand)
  end

  prompt("Player Card Value: #{total_hand_value(player_hand)}")
  display_card(player_hand, false)
  prompt("Dealer Cards: ")
  display_card(dealer_hand, true)

  loop do
    prompt('Would you like to hit or stay?')
    answer = gets.chomp
    deal_card(player_hand) if answer.downcase.start_with?('h')

    system('clear')
    prompt("Player Card Value: #{total_hand_value(player_hand)}")
    display_card(player_hand, false)
    prompt("Dealer Cards: ")
    display_card(dealer_hand, true)
    break if answer.downcase.start_with?('s') ||
             total_hand_value(player_hand) > 21
  end

  loop do
    system('clear')
    prompt("Player Card Value: #{total_hand_value(player_hand)}")
    display_card(player_hand, false)
    prompt("Dealer Card Value: #{total_hand_value(dealer_hand)}")
    display_card(dealer_hand, false)

    break if total_hand_value(dealer_hand) >= 17 ||
             total_hand_value(dealer_hand) > 21
    if total_hand_value(dealer_hand) < 17
      deal_card(dealer_hand)
    end
  end

  display_winner(who_won?(total_hand_value(player_hand),
                          (total_hand_value(dealer_hand))))

  prompt("Would you like to play again?")
  answer = gets.chomp

  break if answer.downcase.start_with?('n')

  shuffle_deck if total_cards_left < 11
end
