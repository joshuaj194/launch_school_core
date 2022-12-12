require 'pry' 

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

def hand_total(hand)
  values = hand.map { |card| card[0] }
  
  hand_total = 0
  values.each do |val|
    if val == "A"
      hand_total += 11
    elsif val.start_with?("J", "Q", "K")
      hand_total += 10
    else
      hand_total += val.to_i
    end
  end

  values.select { |value| value == "A"}.count.times do 
    hand_total -= 10 if hand_total > 21
  end

  hand_total
end

def bust?(hand)
  return true if hand_total(hand) > 21
end

def score(player, dealer)
  player_score = hand_total(player)
  dealer_score = hand_total(dealer)
  prompt "Player score: #{player_score}"
  prompt "Dealer score: #{dealer_score}"
end

def winner(player, dealer)
  if hand_total(player) > hand_total(dealer)
    prompt "You win!"
  elsif hand_total(player) < hand_total(dealer)
    prompt "Dealer wins"
  else
    prompt "It's a tie!"
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

answer = nil
loop do 
  prompt "Player choice: enter 'h' to HIT or 's' to STAY"
  answer = gets.chomp
  break if answer.start_with?('s') || bust?(player_cards)
  deal_cards(deck, current_player, player_cards, dealer_cards)
  break if bust?(player_cards)
  prompt "Here are your cards: #{player_cards}"
end

if bust?(player_cards)
  prompt "Here are your cards: #{player_cards}"
  prompt "You bust, dealer wins!"
else
  prompt "You choose to stay!"
  current_player = alternate_player(current_player)
  prompt "Dealer's turn"

  loop do 
    break if hand_total(dealer_cards) >= 17 || bust?(dealer_cards)
    deal_cards(deck, current_player, player_cards, dealer_cards)
  end
  
  if bust?(dealer_cards)
    prompt "Here are the Dealer cards: #{dealer_cards}"
    prompt "Dealer busts, you win!"
  else
    score(player_cards, dealer_cards)
    winner(player_cards, dealer_cards)
  end
end