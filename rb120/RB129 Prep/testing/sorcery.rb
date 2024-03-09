module Mirage
  def mirage
  end
end

module TimeStop
  def time_stop
  end
end

class SorcerySchool

  SPELLS = ['fireball', 'earthquake', 'wall of water', 'lightning bolt']
  MAGICAL_RANGE = 100..200

  def assign_unique_spell
    if SPELLS.count != 0
      SPELLS.shuffle
      SPELLS.pop
    else
      "TBD"
    end
  end

  protected

  def calc_magical_energy
    case self.class.to_s
    when "Enchanter"
      rand(Enchanter::MAGICAL_RANGE)
    when "Necromancer"
      rand(Necromancer::MAGICAL_RANGE)
    else
      rand(MAGICAL_RANGE)
    end
  end

end

class SorceryStudent < SorcerySchool


  def initialize
    @magical_energy = calc_magical_energy
    @unique_spell = assign_unique_spell
    @artifact = self.class::ARTIFACT
    @robe_color = self.class::ROBES
  end

  def to_s
    <<-HTML
    ============================
    School of Sorcery: #{self.class}
    Magical Energy: #{magical_energy}
    Unique Spell: #{unique_spell}
    Artifact: #{artifact}
    Robe Color: #{robe_color}
    ============================
    HTML
  end

  private 

  attr_reader :magical_energy, :unique_spell, :artifact, :robe_color
end


class Illusionist < SorceryStudent
  ARTIFACT = 'crystal ball'
  ROBES = 'purple'
  include Mirage
end

class Enchanter < Illusionist
  ROBES = 'gold'
  MAGICAL_RANGE = 150..250
  include Mirage
end

class Necromancer < SorceryStudent
  ARTIFACT = 'wooden staff'
  ROBES = 'black'
  MAGICAL_RANGE = 75..175
  include TimeStop

  def create_zombie
  end
end

class Conjurer < SorceryStudent
  ARTIFACT = 'silver wand'
  ROBES = 'green'
  include TimeStop
  include Mirage
end

necromancer = Necromancer.new
# puts necromancer.unique_spell
# puts necromancer.artifact
# puts necromancer.magical_energy
# puts necromancer.robe_color
puts necromancer.calc_magical_energy
puts necromancer