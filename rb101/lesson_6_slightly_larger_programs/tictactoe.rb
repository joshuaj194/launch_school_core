require 'pry'

INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'

def prompt(msg)
  puts "==> #{msg}"
end

# display the board
def display_board(brd)
  system "clear"
  puts "Player is #{PLAYER_MARKER} and the Computer is #{COMPUTER_MARKER}"
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

def intialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER}
  new_board
end

def empty_values(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER}
end

def player_marks(brd)
  square = ''
  loop do
    prompt "Choose a square (#{empty_values(brd).join(', ')}):"
    square = gets.chomp.to_i
    break if empty_values(brd).include?(square)
    prompt "Sorry, invalid selection."
  end
  brd[square] = PLAYER_MARKER
end

def computer_marks(brd)
  square = empty_values(brd).sample
  brd[square] = COMPUTER_MARKER
end

def board_full?(brd)
  empty_values(brd) == []
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd)
  winning_lines = [[1,2,3],[4,5,6],[7,8,9], [1,4,7], [2,5,8],[3,6,9],[1,5,9],[3,5,7]]
  winning_lines.each do |line|
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

  loop do 
  board = intialize_board

  loop do
    display_board(board)

    player_marks(board)
    break if someone_won?(board) || board_full?(board)

    computer_marks(board)
    break if someone_won?(board) || board_full?(board)
  end

  display_board(board)

  if someone_won?(board)
    prompt "#{detect_winner(board)} won!"
  else
    prompt "It's a tie!"
  end

  prompt "Play again? (y or n)"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt "Thanks for playing! Goodbye!"