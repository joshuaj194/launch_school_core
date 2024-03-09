module Runnable
  def run
    puts "#{@name} runs up the court"
  end
end

module UnusualHobby
  def self.death_dive
    "loves to death dive"
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
  include UnusualHobby

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

class Coach < Human
  attr_accessor :hobbies

  def initialize(name)
    super(name)
    @hobbies = []
  end
end

ref = Referee.new("Mark Davis")
forward = Forward.new("LeBron James")
announcer = Announcer.new("Mike Breen")
coach = Coach.new("Erik Spoelstra")

coach.hobbies << UnusualHobby.death_dive
puts coach.hobbies
puts coach.name