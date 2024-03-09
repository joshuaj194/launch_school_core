# Add a class method to your MyCar class that calculates the gas mileage (i.e. miles per gallon) of any car.

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

  def self.calculate_mileage(miles, gallons)
    puts "This car runs for #{miles / gallons} miles per gallon of gas!"
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

  # def spray_paint(color)
  #   self.color = color
  #   puts "Your new #{color} paint job looks great!"
  # end

  def to_s
    "You have a #{color}, #{year} #{@model}!"
  end

end


my_car = MyCar.new("2010","silver","Ford Focus")
puts my_car