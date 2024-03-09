class Board
  WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                  [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # cols
                  [[1, 5, 9], [3, 5, 7]]              # diagonals

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
  def draw
    puts "     |     |"
    puts "  #{@squares[1]}  |  #{@squares[2]}  |  #{@squares[3]}"
    puts "     |     |"
    puts "-----+-----+-----"
    puts "     |     |"
    puts "  #{@squares[4]}  |  #{@squares[5]}  |  #{@squares[6]}"
    puts "     |     |"
    puts "-----+-----+-----"
    puts "     |     |"
    puts "  #{@squares[7]}  |  #{@squares[8]}  |  #{@squares[9]}"
    puts "     |     |"
  end
  # rubocop:enable Metrics/AbcSize

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
    @marker
  end

  def unmarked?
    marker == INITIAL_MARKER
  end

  def marked?
    marker != INITIAL_MARKER
  end
end

class Player
  attr_accessor :marker, :name

  def initialize(marker=nil,name=nil)
    @marker = marker
    @name = name
  end
end

class TTTGame
  COMPUTER_NAME = ['Jarvis', 'Friday', 'R2D2', "Brainiac", 'Ultron']
  attr_reader :board, :human, :computer

  def initialize
    @board = Board.new
    @human = Player.new()
    @computer = Player.new(nil, COMPUTER_NAME.sample)
  end

  def play
    clear
    get_name
    display_welcome_message
    main_game
    display_goodbye_message
  end

  def get_name
    human_name = nil
    loop do 
      puts "What's your name?"
      human_name = gets.chomp
      break unless human_name == "" || human_name == " "
      puts "Cannot be blank"
    end

    human.name = human_name
  end

  private

  def main_game
    loop do
      choose_marker
      @first_to_move = human.marker
      @current_marker = @first_to_move
      display_board
      player_move
      display_result
      break unless play_again?
      reset
      display_play_again_message
    end
  end

  def choose_marker
    human_choice = nil
    loop do 
      puts "What marker would you like to use - X or O?"
      human_choice = gets.chomp
      break if ['X', 'O'].include? human_choice.upcase
      puts "Invalid choice"
    end
    computer_choice = (human_choice.upcase == 'X'? 'O' : 'X')

    human.marker = human_choice
    computer.marker = computer_choice
  end

  def player_move
    loop do
      current_player_moves
      break if board.someone_won? || board.full?
      clear_screen_and_display_board if human_turn?
    end
  end

  def display_welcome_message
    puts "Welcome to Tic Tac Toe, #{human.name}!"
    puts ""
  end

  def display_goodbye_message
    puts "Thanks for playing Tic Tac Toe, #{human.name}! Goodbye!"
  end

  def clear_screen_and_display_board
    clear
    display_board
  end

  def human_turn?
    @current_marker == human.marker
  end

  def display_board
    puts "#{human.name} is playing using #{human.marker}. #{computer.name} is playing using #{computer.marker}."
    puts ""
    board.draw
    puts ""
  end

  def human_moves
    puts "#{human.name}, please choose a square (#{board.unmarked_keys.join(', ')}): "
    square = nil
    loop do
      square = gets.chomp.to_i
      break if board.unmarked_keys.include?(square)
      puts "Sorry, that's not a valid choice."
    end

    board[square] = human.marker
  end

  def computer_moves
    board[board.unmarked_keys.sample] = computer.marker
  end

  def current_player_moves
    if human_turn?
      human_moves
      @current_marker = computer.marker
    else
      computer_moves
      @current_marker = human.marker
    end
  end

  def display_result
    clear_screen_and_display_board

    case board.winning_marker
    when human.marker
      puts "#{human.name} wins!"
    when computer.marker
      puts "#{computer.name} wins!"
    else
      puts "It's a tie!"
    end
  end

  def play_again?
    answer = nil
    loop do
      puts "Would you like to play again, #{human.name}? (y/n)"
      answer = gets.chomp.downcase
      break if %w(y n).include? answer
      puts "Sorry, must be y or n"
    end

    answer == 'y'
  end

  def clear
    system "clear"
  end

  def reset
    board.reset
    @current_marker = @first_to_move
    clear
  end

  def display_play_again_message
    puts "Let's play again!"
    puts ""
  end
end

game = TTTGame.new
game.play