# # Design a Sports Team ()

# # - Include 3 players (guard, forward, center)
# # - All the players’ jersey are green
# # - All players can run and make a layup.
# # - Guards can handle the ball
# # - Forwards can dunk the ball
# # - Centers can block the ball
# # - The referee has a whistle. He wears black and white and is able to run and whistle.

# module Runnable
#   def run
#     puts "#{@name} runs up the court"
#   end
# end

# class Human
#   attr_reader :name 

#   def initialize(name)
#     @name = name
#   end
# end

# class Player < Human
#   include Runnable

#   def initialize(name, jersey_color="green")
#     super(name)
#     @jersey_color = jersey_color
#   end

#   def layup
#     puts "#{@name} makes the layup."
#   end

#   def pass
#     puts "#{name} passes the ball to their teammate."
#   end
# end

# class Guard < Player
#   def handle
#     puts "#{@name} handles the ball and runs the offense."
#   end
# end

# class Forward < Player
#   def dunk
#     puts "#{@name} dunks the ball with power!"
#   end
# end

# class Center < Player
#   def block
#     puts "#{@name} blocks the other team's shot attempt!"
#   end
# end

# class Referee < Human
#   include Runnable

#   def initialize(name)
#     super(name)
#     @jersey_color = "black and white"
#     @whistle = true
#   end

#   def whistle
#     puts "the ref blows the whistle to indicate there is a foul on the play!"
#   end
# end

# class Announcer < Human

#   def announce
#     puts "#{@name} announces what happens during each play so viewers and listeners understand what's going on!"
#   end

# end

# Two other uses for modules are to:
# 
# 1. Mix in the same behavior for unrelated classes


module Runnable
  def run
    puts "#{@name} runs up the court"
  end
end

class Human
  attr_reader :name 

  def initialize(name)
    @name = name
  end
end

class Player < Human
  include Runnable

  def layup
    puts "#{@name} makes the layup."
  end

  def pass
    puts "#{name} passes the ball to their teammate."
  end
end


class Forward < Player
  def dunk
    puts "#{@name} dunks the ball with power!"
  end
end

class Referee < Human
  include Runnable

  def initialize(name)
    super(name)
    @whistle = true
  end

  def whistle
    puts "the ref, #{@name}, blows the whistle to indicate there is a foul on the play!"
  end
end

class Announcer < Human

  def announce
    puts "#{@name} announces what happens during each play so viewers and listeners understand what's going on!"
  end
end

ref = Referee.new("Mark Davis")
forward = Forward.new("LeBron James")
announcer = Announcer.new("Mike Breen")


forward.run
ref.run
forward.dunk
forward.run
ref.run
ref.whistle
announcer.announce
