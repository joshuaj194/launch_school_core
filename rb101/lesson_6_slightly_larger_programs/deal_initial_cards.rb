player_hand = []
dealer_hand = []

# deal cards to dealer and player
def deal_cards(deck, current_player)
  if current_player == 'player'
    player_hand << deck.shift
  elsif current_player == 'dealer'
    dealer_hand << deck.shift
  end
end 

def alternate_player(current_player)
  if current_player == 'player'
    current_player = 'dealer'
  elsif current_player == 'dealer'
    current_player = 'player'
  end
  current_player
end

# player gets a card from the starter deck
#   pick a random card
#   remove it from the starter deck
#   add it to the players hand
#   display the players hand
# the dealer gets a card from the updated deck
#   pick a random card from the 51 remaining cards 
#   add it ot the dealers hand
#   reveal the dealers hand to the player 
# player gets a card from the updated deck
#   pick a random card from the 50 remaining cards 
#   add it to the players hand
#   calculate the value of the cards
#   display the players hand
# the dealer gets a card from the updated deck
#   pick a random card from the 49 remaining cards 
#   add it to the dealers hand
#   calculate the value of the cards
#   reveal ONLY the first card in the dealers hand
# end


def hand_total(hand)
  hand_total = 0
  if card[0] == "A"
    if 21 - hand_total >= 11
      hand_total += 11
    else
      hand_total += 1
    end
  elsif card[0].start_with("J", "Q", "K")
    hand_total += 10
  else
    hand_total += card[0].to_i
  end
  hand_total
end


