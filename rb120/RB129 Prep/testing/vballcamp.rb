module Dig
  def dig_the_ball
  end
end

module Set
  def set_the_ball
  end
end

module Spike
  def spike_the_ball
  end
end

module Block
  def block_the_ball
  end
end

class VolleyballCamp

  def self.calculate_consistency
    rand(40..60)
  end

end

class VolleyballPlayer

  def initialize
    @attack_consistency = VolleyballCamp.calculate_consistency
    @dig_consistency = VolleyballCamp.calculate_consistency
    @block_consistency = VolleyballCamp.calculate_consistency
    @set_consistency = VolleyballCamp.calculate_consistency
  end

  def to_s
    <<-HTML
    ============================
    Position: #{self.class}
    Attack: #{attack_consistency}
    Block: #{block_consistency}
    Dig: #{dig_consistency}
    Set: #{set_consistency}
    Special Skill: #{special_skill}
    Jersey Color: #{jersey_color}
    ============================
    HTML
  end

  private 

  attr_reader :attack_consistency, :block_consistency, :set_consistency, :dig_consistency, :special_skill, :jersey_color

end

class Outside < VolleyballPlayer
  include Spike
  include Dig

  def initialize
    super
    @attack_consistency += 20
    @special_skill = "quick attack"
    @jersey_color = "blue"
  end
end

class Opposite < Outside
  include Set
  include Block

  def initialize
    super
    @set_consistency += 10
    @block_consistency += 20
    @jersey_color = "yellow"
  end
end

class Middle < VolleyballPlayer
  include Spike
  include Block

  def initialize
    super
    @block_consistency += 30
    @set_consistency -= 10
    @dig_consistency -= 10
    @special_skill = "slide attack"
    @jersey_color = "red"
  end
end

class Setter < VolleyballPlayer
  include Dig
  include Set

  def initialize
    super
    @set_consistency += 30
    @dig_consistency += 10
    @special_skill = "quick set"
    @jersey_color = "green"
  end

  def dump_the_ball
  end
end

class Libero < VolleyballPlayer
  include Dig
  include Set

  def initialize
    super
    @dig_consistency += 30
    @set_consistency += 10
    @block_consistency -= 20
    @attack_consistency -= 20
    @special_skill = "pancake dig"
    @jersey_color = "white"
  end
end

kealy = Outside.new
ace = Libero.new
josh = Opposite.new
keith = Setter.new
luke = Middle.new

puts kealy
kealy.spike_the_ball
kealy.dig_the_ball
# kealy.set_the_ball
# kealy.block_the_ball
puts ace
# ace.spike_the_ball
ace.dig_the_ball
ace.set_the_ball
# ace.block_the_ball

puts josh

josh.spike_the_ball
josh.dig_the_ball
josh.set_the_ball
josh.block_the_ball

puts keith

# keith.spike_the_ball
keith.dig_the_ball
keith.set_the_ball
# keith.block_the_ball

puts luke

luke.spike_the_ball
# luke.dig_the_ball
# luke.set_the_ball
luke.block_the_ball