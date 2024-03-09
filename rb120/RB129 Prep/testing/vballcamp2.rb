module Dig
  def dig_the_ball
  end
end

module KillSetup
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

module VolleyballTraining

  class VolleyballCamp
    def self.calculate_consistency
      rand(40..60)
    end
  end

  class VolleyballPlayer

    @@total_players = 0

    def self.total
      @@total_players
    end

    def initialize
      @attack_consistency = VolleyballCamp.calculate_consistency
      @dig_consistency = VolleyballCamp.calculate_consistency
      @block_consistency = VolleyballCamp.calculate_consistency
      @set_consistency = VolleyballCamp.calculate_consistency
      @@total_players += 1
    end 

    def to_s
      <<~HTML.strip
      ============================
      Position: #{self.class.to_s.split('::')[1]}
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

    @@total_outsides = 0

    def initialize
      super
      @attack_consistency += 20
      @special_skill = "quick attack"
      @jersey_color = "blue"
      @@total_outsides += 1
    end

    def self.total
      @@total_outsides - VolleyballTraining::Opposite.total
    end
  end

  class Opposite < Outside
    include KillSetup
    include Block
    @@total_opposites = 0

    def initialize
      super
      @set_consistency += 10
      @block_consistency += 20
      @jersey_color = "yellow"
      @@total_opposites += 1
    end

    def self.total
      @@total_opposites
    end
  end

  class Middle < VolleyballPlayer
    include Spike
    include Block
    @@total_middles = 0

    def initialize
      super
      @block_consistency += 30
      @set_consistency -= 10
      @dig_consistency -= 10
      @special_skill = "slide attack"
      @jersey_color = "red"
      @@total_middles += 1
    end

    def self.total
      @@total_middles
    end
  end

  class Setter < VolleyballPlayer
    include Dig
    include KillSetup
    @@total_setters = 0

    def initialize
      super
      @set_consistency += 30
      @dig_consistency += 10
      @special_skill = "quick set"
      @jersey_color = "green"
      @@total_setters += 1
    end

    def dump_the_ball
    end

    def self.total
      @@total_setters
    end
  end

  class Libero < VolleyballPlayer
    include Dig
    include KillSetup
    @@total_liberos = 0

    def initialize
      super
      @dig_consistency += 30
      @set_consistency += 10
      @block_consistency -= 20
      @attack_consistency -= 20
      @special_skill = "pancake dig"
      @jersey_color = "white"
      @@total_liberos += 1
    end

    def self.total
      @@total_liberos
    end
  end
end

generic = VolleyballTraining::VolleyballPlayer.new
kealy = VolleyballTraining::Outside.new
ace = VolleyballTraining::Libero.new
josh = VolleyballTraining::Opposite.new
keith = VolleyballTraining::Setter.new
luke = VolleyballTraining::Middle.new

puts VolleyballTraining::VolleyballPlayer.total
puts VolleyballTraining::Outside.total
puts VolleyballTraining::Opposite.total
puts VolleyballTraining::Middle.total
puts VolleyballTraining::Setter.total
puts VolleyballTraining::Libero.total

puts generic
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