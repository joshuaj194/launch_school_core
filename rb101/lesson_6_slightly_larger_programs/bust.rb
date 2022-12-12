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

player_value = hand_total(player_hand)
dealer_value = hand_total(dealer_hand)

def bust?(value, current_player)
  if value > 21
    alternate_player(current_player)
    prompt "#{current_player} wins!"
  end
end


