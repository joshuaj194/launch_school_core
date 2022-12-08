def player_decides
  prompt "Who should go first?"
  prompt "Enter p for player and c for computer"
  choice = gets.chomp
end

def computer_decides
  choice = ['p','c'].sample
end
