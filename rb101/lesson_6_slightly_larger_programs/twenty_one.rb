require 'pry'

CAP = 21
DEALER_MIN = 17

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

def deal_cards(deck, hand)
  hand << deck.shift
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

  values.select { |value| value == "A" }.count.times do
    hand_total -= 10 if hand_total > CAP
  end

  hand_total
end

def bust?(hand)
  score = hand_total(hand)
  return true if score > CAP
end

def winner(player_cards, dealer_cards)
  player = hand_total(player_cards)
  dealer = hand_total(dealer_cards)

  if player > CAP
    :player_busted
  elsif dealer > CAP
    :dealer_busted
  elsif player > dealer 
    :player_wins
  elsif player < dealer
    :dealer_wins
  else
    :tie
  end
end

def hand_recap(player, dealer)
  p_score = hand_total(player)
  d_score = hand_total(dealer)

  puts "------------------"
  puts "Final player hand is #{player} for a total of #{p_score}"
  puts "Final dealer hand is #{dealer} for a total of #{d_score}"
  puts "------------------"
end

def results(player_cards, dealer_cards)
  outcomes = winner(player_cards, dealer_cards)

  case outcomes
    when :player_busted
      prompt "You busted! Dealer wins!"
    when :dealer_busted
      prompt "Dealer busted! You win!"
    when :player_wins
      prompt "You win!"
    when :dealer_wins
      prompt "Dealer wins!"
    when :tie
      prompt "It's a tie!"
  end
end

def wins(player_cards, dealer_cards)
  outcomes = winner(player_cards, dealer_cards)
  
  case outcomes
    when :player_busted
      dealer_wins += 1
    when :dealer_busted
      player_wins += 1
    when :player
      player_wins += 1
    when :dealer
      dealer_wins += 1
  end

end

def play_again?
  puts " ------------------- "
  prompt "Would you start the next round?"
  again = gets.chomp
  again.downcase.start_with?('y')
end

loop do
  player_wins = 0
  dealer_wins = 0

  loop do 
    prompt "Wins:"
    prompt "-----"
    prompt "Player: #{player_wins}"
    prompt "Dealer: #{dealer_wins}"
    prompt "-----"

    deck = starter_deck(cards, suits)
    player_cards = []
    dealer_cards = []

    loop do
      break if dealer_cards.length > 1
      deal_cards(deck, player_cards)
      deal_cards(deck, dealer_cards)
    end

    prompt "Here are your cards: #{player_cards}"
    prompt "Here is one of the dealer cards: #{dealer_cards[0]}"

    answer = nil
    loop do
      prompt "Player choice: enter 'h' to HIT or 's' to STAY"
      answer = gets.chomp
      break if answer.start_with?('s') || bust?(player_cards)
      deal_cards(deck, player_cards)
      break if bust?(player_cards)
      prompt "Here are your cards: #{player_cards}"
    end

    if bust?(player_cards)
      hand_recap(player_cards, dealer_cards)
      results(player_cards, dealer_cards)
      dealer_wins += 1
      break if dealer_wins == 5
      play_again? ? next : break
    else
      prompt "You choose to stay!"
    end

    loop do
      dealer_score = hand_total(dealer_cards)
      break if dealer_score >= DEALER_MIN || bust?(dealer_cards)
      prompt "Dealer's hits!"
      deal_cards(deck, dealer_cards)
    end

    if bust?(dealer_cards)
      hand_recap(player_cards, dealer_cards)
      results(player_cards, dealer_cards)
      player_wins += 1
      break if player_wins == 5
      play_again? ? next : break
    else
      prompt "Dealer stays with #{dealer_cards}"
    end

    hand_recap(player_cards, dealer_cards)
    results(player_cards, dealer_cards)

    if winner(player_cards, dealer_cards) == :player_wins
      player_wins += 1
    elsif winner(player_cards, dealer_cards) == :dealer_wins
      dealer_wins += 1
    end

    break if player_wins == 5 || dealer_wins == 5
    play_again? ? next : break
  end

  if player_wins == 5
    prompt "Game Over! Player wins!"
  elsif dealer_wins == 5
    prompt "Game Over!Dealer wins!"
  else
    prompt "First to 5, wins!"
  end

  puts "Thanks for playing Twenty One!"
  prompt "Do you want to start a new game?"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end