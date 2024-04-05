#  1. Initialize deck
#  2. Deal cards to player and dealer
#  3. Player turn: hit or stay
#    - repeat until bust or "stay"
#  4. If player bust, dealer wins.
#  5. Dealer turn: hit or stay
#    - repeat until total >= 17
#  6. If dealer bust, player wins.
#  7. Compare cards and declare winner.

# Initialize deck
# Data structure to hold deck (want to try a hash with keys as the suits)
#  ex. given is nested arr

# Calculate ace values
#   Create method for it

deck = { "Spades" => ['A', '2', '3', '4', '5', '6', '7', '8', '9', '10', 'J',
                     'Q', 'K'],
         "Clubs" => ['A', '2', '3', '4', '5', '6', '7', '8', '9', '10', 'J',
                     'Q', 'K'],
         "Diamonds" => ['A', '2', '3', '4', '5', '6', '7', '8', '9', '10', 'J',
                        'Q', 'K'],
         "Hearts" => ['A', '2', '3', '4', '5', '6', '7', '8', '9', '10', 'J',
                      'Q', 'K'] }

def prompt(msg)
  puts "=> #{msg}"
end

def display_cards(player_cards, computer_cards)
  system 'clear'
  puts "Your cards are the bottom 2. Computer is the single card shown up top."
  puts ""
  puts "     |     |"
  puts "  #{computer_cards[0]}  |  Hidden Card"
  puts "     |     |"
  puts "-----+-----+"
  puts "     |     |"
  puts "  #{player_cards[0]}  |  #{player_cards[1]}  |  #{player_cards[2]}  |  #{player_cards[3]}  |  #{player_cards[4]}"
  puts "     |     |"
  puts "-----+-----+"
  puts ""
end

def deal_initial_cards(cards)
  player_suit1 = cards.keys.sample
  player_card1 = cards.values.sample.sample

  player_suit2 = cards.keys.sample
  player_card2 = cards.values.sample.sample

  player_cards = [[player_suit1, player_card1], [player_suit2, player_card2]]
  cards.each do |k, v|
    v.reject! { |el| el == player_card1 } if k == player_suit1
    v.reject! { |el| el == player_card2 } if k == player_suit2
  end

  computer_suit1 = cards.keys.sample
  computer_card1 = cards.values.sample.sample

  computer_suit2 = cards.keys.sample
  computer_card2 = cards.values.sample.sample

  computer_cards = [[computer_suit1, computer_card1],
                    [computer_suit2, computer_card2]]

  cards.each do |k, v|
    v.reject! { |el| el == computer_cards[0][1] } if k == computer_cards[0][0]
    v.reject! { |el| el == computer_cards[1][1] } if k == computer_cards[1][0]
  end
  return player_cards, computer_cards, cards
end

FACE_CARDS = ["J", "Q", "K"]
def compute_totals(cards)
  sum = 0
  values = cards.map { |card| card[1] }

  values.each do |value|
    sum += if value == 'A'
             11
           elsif FACE_CARDS.include?(value)
             10
           else
             value.to_i
           end
  end

  values.select { |val| val == 'A' }.count.times do
    sum -= 10 if sum > 21
  end
  sum
end

def player_hit(cards, player_cards)
  new_card_suit = cards.keys.sample
  new_card_val = cards.values.sample.sample

  player_cards += [[new_card_suit, new_card_val]]
  cards.each do |k, v|
    v.reject! { |el| el == new_card_val } if k == new_card_suit
  end
  player_cards
end

def computer_hit(cards, computer_cards)
  new_card_suit = cards.keys.sample
  new_card_val = cards.values.sample.sample

  computer_cards += [[new_card_suit, new_card_val]]
  cards.each do |k, v|
    v.reject! { |el| el == new_card_val } if k == new_card_suit
  end

  computer_cards
end

def detect_winner(player_cards, computer_cards)
  player_score = compute_totals(player_cards)
  computer_score = compute_totals(computer_cards)

  if player_score > computer_score
    'Player'
  elsif player_score == computer_score
    'Tie'
  else
    'Computer'
  end
end

loop do
  player_cards, computer_cards, deck = deal_initial_cards(deck)
  display_cards(player_cards, computer_cards)
  answer = ''

  loop do
    puts "Would you like to hit or stay? (enter 'hit' or 'stay')"
    answer = gets.chomp
    break if answer.downcase == 'stay' || compute_totals(player_cards) > 21

    # condition if player hits
    if answer.downcase == 'hit'
      player_cards = player_hit(deck, player_cards)
      display_cards(player_cards, computer_cards)
      break if compute_totals(player_cards) > 21
    else
      puts "Invalid entry.  Must enter 'hit' or 'stay'."
    end
  end

  # condition checking if player busts
  if compute_totals(player_cards) > 21
    prompt("You have busted and lost the game. Play again?('y' for yes)")
    play_again = gets.chomp
    break if play_again != 'y'
    next if play_again == 'y'
  end
  # player stayed (now onto dealers turn and keep track of their score)
  loop do
    computer_score = compute_totals(computer_cards)
    player_score = compute_totals(player_cards)
    break if computer_score >= 17
    if answer.downcase == 'stay'
      while computer_score < 17
        computer_cards = computer_hit(deck, computer_cards)
        computer_score = compute_totals(computer_cards)
      end
    end
  end

  # Condition to check if computer busts
  if compute_totals(computer_cards) > 21
    prompt("The computer has busted and you win the game. Play again?('y' for yes)")
    prompt("Here are the computer's cards below")
    p computer_cards
    play_again = gets.chomp
    break if play_again != 'y'
    next if play_again == 'y'
  end

  winner = detect_winner(player_cards, computer_cards)
  if winner == 'Player'
    prompt("Congratulations you won this round.")
    prompt("Here are the computers cards below.")
    p computer_cards
    prompt("Play again?('y' for yes)")
  elsif winner == 'Tie'
    prompt("Computer and player have tied this round.")
    prompt("The computers cards are shown below.")
    p computer_cards
    prompt("Play again?('y' for yes)")
  else
    prompt("The computer won. Good luck on the next one.")
    p computer_cards
    prompt("Go again?")
  end
  play_again = gets.chomp
  break if play_again.downcase != 'y'
end

# FIgure out way to hide the computers second card

# **Refactorization throughout code

# Could find a way to replace the hash keys in the display with the specific suit (ex: "heart"=> <3 )
