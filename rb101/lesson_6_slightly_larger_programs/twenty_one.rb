require 'pry' 

# 1. Initialize deck  
# 2. Deal cards to player and dealer
#   Deal
# 3. Player turn: hit or stay
#   - repeat until bust or "stay"
# 4. If player bust, dealer wins.
# 5. Dealer turn: hit or stay
#   - repeat until total >= 17
# 6. If dealer bust, player wins.
# 7. Compare cards and declare winner.

def prompt(msg)
  puts "==> #{msg}"
end

def starter_deck(vals, types)
  starter_deck = []
  types.each do |type|
    vals.each do |val|
      starter_deck << [val, type]
    end
  end
  starter_deck.shuffle!
end

cards = %w(2 3 4 5 6 7 8 9 10 J Q K A)
suits = %w(spades clubs hearts diamonds)

def alternate_player(current_player)
  if current_player == 'player'
    current_player = 'dealer'
  elsif current_player == 'dealer'
    current_player = 'player'
  end
  current_player
end

def deal_cards(deck, current_player, p_hand, d_hand)
  if current_player == 'player'
    p_hand << deck.shift
  elsif current_player == 'dealer'
    d_hand << deck.shift
  end
end 

deck = starter_deck(cards, suits)

player_cards = []

dealer_cards =  []

current_player = 'player'

loop do
  break if dealer_cards.length > 1
  deal_cards(deck, current_player, player_cards, dealer_cards)
  current_player = alternate_player(current_player)
end

prompt "Here are your cards: #{player_cards}"
prompt "Here is one of the dealer cards: #{dealer_cards[0]}"
prompt "Player choice: enter 'h' to HIT or 's' to STAY"
answer = gets.chomp

# The player can continue to hit as many times as they want. The turn is over when the player either busts or stays. If the player busts, the game is over and the dealer won.


# if answer.start_with?('h')
#   deal_cards(deck, current_player, player_cards, dealer_cards)
#   current_player = alternate_player(current_player)
# else 
#   current_player = alternate_player(current_player)
# end

# prompt "Here are your cards: #{player_cards}"
# prompt "Here is one of the dealer cards: #{dealer_cards[0]}"