# Create a class called MyCar. When you initialize a new instance or object of the class, allow the user to define some instance variables that tell us the year, color, and model of the car. Create an instance variable that is set to 0 during instantiation of the object to track the current speed of the car as well. Create instance methods that allow the car to speed up, brake, and shut the car off.

class MyCar
  
  attr_accessor :color
  attr_reader :year

  def self.mileage(miles, gallons)
    mileage = miles / gallons
    puts "#{mileage} miles per gallon of gas."
  end

  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model
    @current_speed = 0
  end

  def speed_up(number)
    @current_speed += number
    puts "Speeding up by #{number} miles per hour!"
  end

  def brake(number)
    @current_speed -= number
    puts "Slowing down by #{number} miles per hour!"
  end

  def current_speed
    puts "Your current speed is #{@current_speed} miles per hour"
  end

  def shut_off
    @current_speed = 0
    puts "You've come to a complete stop!"
  end

  def spray_paint(color)
    @color = color
  end

end



surfer = MyCar.new(2015, "Silver", "CR-V")
surfer.speed_up(20)
surfer.current_speed
surfer.speed_up(20)
surfer.current_speed
surfer.brake(20)
surfer.current_speed
surfer.brake(20)
surfer.current_speed
surfer.shut_off
surfer.current_speed
puts surfer.color
surfer.color = "Black"
puts surfer.color
puts surfer.year

surfer.spray_paint("yellow")
puts surfer.color
