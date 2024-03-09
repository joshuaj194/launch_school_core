require 'pry'
class Board
  WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] +
                  [[1, 4, 7], [2, 5, 8], [3, 6, 9]] +
                  [[1, 5, 9], [3, 5, 7]]
  def initialize
    @squares = {}
    reset
  end

  def []=(num, marker)
    @squares[num].marker = marker
  end

  def unmarked_keys
    @squares.keys.select { |key| @squares[key].unmarked? }
  end

  def full?
    unmarked_keys.empty?
  end

  def someone_won?
    !!winning_marker
  end

  # returns winning marker or nil
  def winning_marker
    WINNING_LINES.each do |line|
      squares = @squares.values_at(*line)
      if three_identical_markers?(squares)
        return squares.first.marker
      end
    end
    nil
  end

  def reset
    (1..9).each { |key| @squares[key] = Square.new }
  end

  # rubocop:disable Metrics/AbcSize
  # rubocop:disable Metrics/MethodLength
  def draw
    puts "   |   |   "
    puts " #{@squares[1]} | #{@squares[2]} | #{@squares[3]} "
    puts "   |   |   "
    puts "---+---+---"
    puts "   |   |   "
    puts " #{@squares[4]} | #{@squares[5]} | #{@squares[6]} "
    puts "   |   |   "
    puts "---+---+---"
    puts "   |   |   "
    puts " #{@squares[7]} | #{@squares[8]} | #{@squares[9]} "
    puts "   |   |   "
  end
  # rubocop:enable Metrics/AbcSize
  # rubocop:enable Metrics/MethodLength

  private

  def three_identical_markers?(squares)
    markers = squares.select(&:marked?).collect(&:marker)
    return false if markers.size != 3
    markers.min == markers.max
  end
end

class Square
  INITIAL_MARKER = " "
  attr_accessor :marker

  def initialize(marker=INITIAL_MARKER)
    @marker = marker
  end

  def to_s
    marker
  end

  def unmarked?
    marker == INITIAL_MARKER
  end

  def marked?
    marker != INITIAL_MARKER
  end
end

class Player
  attr_accessor :name

  def initialize(player_type = :human)
    @player_type = player_type
    set_name
  end

  def set_name
    if human?
      n = ""
      loop do 
        puts "What's your name?"
        n = gets.chomp
        break unless n.empty?
        puts "Sorry, must enter a value"
      end
      self.name = n
    else
      self.name = ['R2D2', 'Ultron', 'Eagle'].sample
    end
  end

  def human?
    @player_type == :human
  end
end

class TTTGame
  attr_reader :board, :human, :computer, :human_marker, :computer_marker, :first_player

  def initialize
    @board = Board.new
    @human = Player.new
    @computer = Player.new(:computer)
  end

  def play
    system 'clear'
    display_welcome_message
    choose_your_marker
    main_game
    display_goodbye_message
  end

  private

  def human_marker=(marker)
    @human_marker = marker
  end

  def computer_marker=(marker)
    @computer_marker = marker
  end

  def clear
    system "clear"
  end

  def display_welcome_message
    puts "Welcome to tictactoe, #{@human.name}!"
    puts ""
  end

  def choose_your_marker
    choice = nil
    loop do
      puts "Would you like to play as X or O?"
      choice = gets.chomp.upcase
      break if ['X','O'].include?(choice)
      puts "Sorry, must choose 'X' or 'O'"
    end

    if choice == 'X'
      @human_marker = 'X'
      @computer_marker = 'O'
    else
      @computer_marker = 'X'
      @human_marker = 'O'
    end

    @first_player = @human_marker
    @current_marker = @first_player
  end

  def display_goodbye_message
    puts "Thanks for playing tictactoe, #{@human.name}. Good bye!"
  end

  def clear_screen_and_display_board
    clear
    display_board
  end

  def display_board
    puts "You are #{@human_marker}. The computer, named #{@computer.name}, is #{@computer_marker}."
    puts ""
    board.draw
    puts ""
  end

  def human_moves
    puts "Choose a square: (#{board.unmarked_keys.join(',')})"
    square = nil
    loop do
      square = gets.chomp.to_i
      break if board.unmarked_keys.include?(square)
      puts "Sorry, invalid choice."
    end
    board[square] = @human_marker
  end

  def computer_moves
    board[board.unmarked_keys.sample] = @computer_marker
  end

  def display_result
    clear_screen_and_display_board

    case board.winning_marker
    when @human_marker
      puts "You won!"
    when @computer_marker
      puts "Computer won!"
    else
      puts "It's a tie!"
    end
  end

  def play_again?
    answer = nil
    loop do
      puts "Would you like to play again?(y/n)"
      answer = gets.chomp.downcase
      break if %w(y n).include? answer
      puts "Sorry must be y or n"
    end

    answer == 'y'
  end

  def reset
    board.reset
    clear
    @current_marker = @first_player
  end

  def display_play_again_message
    puts "Let's play again!"
    puts ""
  end

  def current_player_moves
    if human_turn?
      human_moves
      @current_marker = @computer_marker
    else
      computer_moves
      @current_marker = @human_marker
    end
  end

  def human_turn?
    @current_marker == @human_marker
  end

  def player_move
    loop do
      current_player_moves
      break if board.someone_won? || board.full?
      clear_screen_and_display_board if human_turn?
    end
  end

  def main_game
    loop do
      display_board
      player_move
      display_result
      break unless play_again?
      reset
      display_play_again_message
    end
  end
end

game = TTTGame.new
game.play
