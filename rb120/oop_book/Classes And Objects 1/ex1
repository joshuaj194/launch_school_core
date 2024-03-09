class MyCar
  attr_accessor :color
  attr_writer :model
  attr_reader :year

  def initialize(y,c,m)
    @year = y
    @color = c
    @model = m
    @current_speed = 0
  end

  def speed_up(number)
    @current_speed += number
    puts "You hit the gas and you sped up by #{number} mph."
  end

  def brake(number)
    @current_speed -= number
    puts "You hit the brake and slowed down by #{number} mph."
  end
  
  def current_speed
    puts "You are now going #{@current_speed} mph."
  end

  def shut_down
    @current_speed = 0
    puts "Let's get this thing parked!"
  end

  def spray_paint(color)
    self.color = color
    puts "Your new #{color} paint job looks great!"
  end
end


lumina = MyCar.new(1997, 'chevy lumina', 'white')
# lumina.speed_up(20)
# lumina.current_speed
# lumina.speed_up(20)
# lumina.current_speed
# lumina.brake(20)
# lumina.current_speed
# lumina.brake(20)
# lumina.current_speed
# lumina.shut_down
# lumina.current_speed

lumina.spray_paint('red')