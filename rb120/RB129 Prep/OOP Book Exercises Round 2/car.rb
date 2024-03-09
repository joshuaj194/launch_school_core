class Vehicle
  attr_accessor :color
  attr_reader :year, :model

  @@number_of_vehicles = 0

  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model
    @current_speed = 0
    @@number_of_vehicles += 1
  end

  def self.total
    @@number_of_vehicles
  end

  def speed_up(mph)
    @current_speed += mph
    "You're speeding up by #{mph} miles per hour!"
  end

  def brake(mph)
    @current_speed -= mph
    "You're slowing down by #{mph} miles per hour!"
  end

  def current_speed
    "You are now travelling at #{@current_speed} 
  miles per hour!"
  end

  def shut_off
    @current_speed = 0
    "You've come to a stop and the car has been 
  turned off."
  end

  def self.mileage(miles_driven, gallons_gas_used)
    "#{miles_driven / gallons_gas_used} miles per 
  gallon"
  end

  def spray_paint(color)
    self.color = color
    "That new #{@color} paintjob looks rad!"
  end

  def age
    "Your #{self.model} is #{years_old} years old."
  end

  private
  
  def years_old
    Time.now.year - self.year
  end
end

class MyCar < Vehicle
  DOORS = 4

  def to_s
    "My car is a #{color}, #{year} #{@model}."
  end
end

class MyTruck < Vehicle
  DOORS = 2
end

puts lumina = MyCar.new(1997, 'white', 'chevy lumina')
puts lumina.speed_up(20)
puts lumina.current_speed
puts lumina.speed_up(20)
puts lumina.current_speed
puts lumina.brake(20)
puts lumina.current_speed
puts lumina.brake(20)
puts lumina.current_speed
puts lumina.shut_off
puts lumina.current_speed
puts lumina.spray_paint('red')
puts MyCar.mileage(351, 13)
puts lumina
puts lumina.age