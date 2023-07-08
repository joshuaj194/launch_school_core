# Behold this incomplete class for constructing boxed banners.

class Banner
  def initialize(message)
    @message = message
  end

  def to_s
    [horizontal_rule, empty_line, message_line, empty_line, horizontal_rule].join("\n")
  end

  private

  def horizontal_rule
    # length of the line is the number of characters in the message plus 2. 
    # starting and ending characters are `+`
    "+-#{"-" * (@message.size)}-+"
    # "| #{@blank_spaces} |"

  end

  def empty_line
    # length of the line is the number of characters in the message plus 2. 
    # starting and ending characters are `|`
    "| #{" " * (@message.size)} |"
    # "| #{@blank_spaces} |"
  end

  def message_line
    "| #{@message} |"
  end

  # blank_spaces = def empty_spaces(message)
  #   arr = message.chars.count
    
  #   empties = ""

  #   arr.times do |val|
  #     empties += " "
  #   end

  #   empties
  # end

end

# Complete this class so that the test cases shown below work as intended. You are free to add any methods or instance variables you need. However, do not make the implementation details public.

# You may assume that the input will always fit in your terminal window.
  
# Test Cases:
  
  banner = Banner.new('To boldly go where no one has gone before.')
  puts banner

  # +--------------------------------------------+
  # |                                            |
  # | To boldly go where no one has gone before. |
  # |                                            |
  # +--------------------------------------------+

  banner = Banner.new('')
  puts banner

# +--+
# |  |
# |  |
# |  |
# +--+