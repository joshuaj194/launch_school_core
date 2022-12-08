def place_piece!(board, current_player)
  if current_player == 'player'
    player_marks(board)
  elsif current_player == 'computer'
    computer_marks(board)
  end
end 

def alternate_player(current_player)
  if current_player == 'player'
    current_player = 'computer'
  elsif current_player == 'computer'
    current_player = 'player'
  end
  current_player
end 