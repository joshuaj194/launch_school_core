module Mirage
  def mirage
  end
end

module TimeStop
  def time_stop
  end
end

class SorcerySchool

  @@spells = ['fireball', 'earthquake', 'wall of water', 'lightning bolt']

  def assign_unique_spell
    if @@spells.count != 0
      @@spells.shuffle
      @@spells.pop
    else
      "TBD"
    end
  end

  protected

  def calc_magical_energy
    rand(SorceryStudent::MAGICAL_RANGE)
  end

end

class SorceryStudent < SorcerySchool
  MAGICAL_RANGE = 100..200

  def initialize
    @unique_spell = assign_unique_spell
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
  include Mirage

  def initialize
    super
    @artifact = 'crystal ball'
    @robe_color = 'purple'
    @magical_energy = calc_magical_energy
  end
end

class Enchanter < Illusionist
  include Mirage

  def initialize
    super
    @robe_color = 'gold'
    @magical_energy = calc_magical_energy + 50
  end
end

class Necromancer < SorceryStudent
  include TimeStop

  def initialize
    super
    @artifact = 'wooden staff'
    @robe_color = 'black'
    @magical_energy = calc_magical_energy - 25
  end

  def create_zombie
  end
end

class Conjurer < SorceryStudent
  include TimeStop
  include Mirage

  def initialize
    super
    @artifact = 'silver wand'
    @robe_color = 'green'
    @magical_energy = calc_magical_energy
  end
end

illusionist = Illusionist.new
puts illusionist

enchanter = Enchanter.new
puts enchanter

necromancer = Necromancer.new
puts necromancer

conjurer = Conjurer.new
puts conjurer

illusionist2 = Illusionist.new
puts illusionist2

puts rand(Necromancer::MAGICAL_RANGE)
puts necromancer.class.to_s == "Necromancer"
puts necromancer.class

# puts illusionist.unique_spell
# puts conjurer.magical_energy
puts enchanter.artifact