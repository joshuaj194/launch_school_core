class Spaceship
  attr_writer :craft_name, :captain, :speed

  def initialize(craft_name, captain, speed)
    self.craft_name = craft_name
    self.captain = captain
    self.speed= speed
  end

  # def craft_name=(craft_name)
    # @craft_name = craft_name
  # end
# 
  # def captain=(captain)
    # @captain = captain
  # end
# 
  # def speed=(speed)
    # @speed = speed
  # end
end

uss_enterprise = Spaceship.new('USS Enterprise', 'Jean-Luc Picard', 'Warp 9.6')
