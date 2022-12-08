require 'pry'

INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9], [1, 4, 7], [2, 5, 8], [3, 6, 9], [1, 5, 9], [3, 5, 7]]


def prompt(msg)
  puts "==> #{msg}"
end

def player_decides
  prompt "Who should go first?"
  prompt "Enter p for player and c for computer"
  choice = gets.chomp
end

def computer_decides
  choice = ['c','p'].sample
end

def joinor(arr, separator = ', ', last = 'or')
  str_out = ''
  counter = 0
  if arr.length == 1
    str_out += "#{arr[counter]}"
    return str_out
  elsif arr.length == 2
    str_out += "#{arr[counter]} " + last + " #{arr[counter + 1]}"
    return str_out
  end
  loop do
    break if counter == arr.length - 2
    str_out += "#{arr[counter]}" + separator
    counter += 1
    end
  str_out += "#{arr[counter]}" + separator + last + " #{arr[counter + 1]}"
end

# rubocop:disable Metrics/AbcSize
def display_board(brd, player, computer)
  system "clear"
  puts "Player is #{PLAYER_MARKER} and the Computer is #{COMPUTER_MARKER}"
  puts "SCORE --- Player: #{player} Computer: #{computer}"
  puts ""
  puts "     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}  "
  puts "     |     |"
  puts "-----|-----|-----"
  puts "     |     |"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}  "
  puts "     |     |"
  puts "-----|-----|-----"
  puts "     |     |"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}  "
  puts "     |     |"
  puts ""
end
# rubocop:enable Metrics/AbcSize

def intialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_values(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def player_marks(brd)
  square = ''
  loop do
    # prompt "Choose a square (#{empty_values(brd).join(', ')}):"
    prompt "Choose a square (#{joinor(empty_values(brd))}):"
    square = gets.chomp.to_i
    break if empty_values(brd).include?(square)
    prompt "Sorry, invalid selection."
  end
  brd[square] = PLAYER_MARKER
end

# def at_risk(brd)
#   at_risk_squares = []
#   winning_lines = [[1, 2, 3], [4, 5, 6], [7, 8, 9], [1, 4, 7], [2, 5, 8], [3, 6, 9], [1, 5, 9], [3, 5, 7]]
#   winning_lines.each do |line|
#     if brd[line[0]] == PLAYER_MARKER &&
#        brd[line[1]] == PLAYER_MARKER &&
#        brd[line[2]] == INITIAL_MARKER
#       at_risk_squares << line[2]
#     end
#   end
#   return at_risk_squares
# end

def find_at_risk_square(line, board)
  if board.values_at(*line).count(PLAYER_MARKER) == 2
    board.select{|k,v| line.include?(k) && v == INITIAL_MARKER}.keys.first
  else
    nil
  end
end

def find_winning_square(line, board)
  if board.values_at(*line).count(COMPUTER_MARKER) == 2
    board.select{|k,v| line.include?(k) && v == INITIAL_MARKER}.keys.first
  else
    nil
  end
end

def computer_marks(brd)
  # if at_risk(brd).empty?
  #   square = empty_values(brd).sample
  # else
  #   square = at_risk(brd).sample
  # end

  square = nil
  WINNING_LINES.each do |line|
    square = find_winning_square(line, brd)
    break if square
  end

  if !square
    WINNING_LINES.each do |line|
      square = find_at_risk_square(line, brd)
      break if square
    end
  end

  if !square
    if empty_values(brd).include?(5)
      square = 5
    end
  end

  if !square
    square = empty_values(brd).sample
  end

  brd[square] = COMPUTER_MARKER
end

def board_full?(brd)
  empty_values(brd) == []
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    if brd[line[0]] == PLAYER_MARKER &&
       brd[line[1]] == PLAYER_MARKER &&
       brd[line[2]] == PLAYER_MARKER
      return "Player"
    elsif brd[line[0]] == COMPUTER_MARKER &&
          brd[line[1]] == COMPUTER_MARKER &&
          brd[line[2]] == COMPUTER_MARKER
      return "Computer"
    end
  end
  nil
end

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

loop do
  player_score = 0
  computer_score = 0

  loop do
    board = intialize_board
    
   if player_decides == 'p'
    current_player = 'player'  
   elsif player_decides == 'c'
    current_player = 'computer'
   end
    
    loop do
      display_board(board, player_score, computer_score)
      place_piece!(board, current_player)
      current_player = alternate_player(current_player)
      break if someone_won?(board) || board_full?(board)
    end

    display_board(board, player_score, computer_score)

    if someone_won?(board)
      prompt "#{detect_winner(board)} scores!"
      player_score += 1 if detect_winner(board) == "Player"
      computer_score += 1 if detect_winner(board) == "Computer"
    else
      prompt "It's a tie!"
    end
    
    break if player_score == 5 || computer_score == 5

    prompt "Next round? (y or n)"
    answer = gets.chomp
    break if answer.downcase.start_with?('n')
  end

  if player_score == 5
    prompt "Player wins!"
  elsif computer_score == 5
    prompt "Computer wins!"
  else
    prompt "First to 5, wins!"
  end

  prompt "Play again? (y or n)"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt "Thanks for playing! Goodbye!"