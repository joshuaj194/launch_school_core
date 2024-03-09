class Car
  @@total_starts = 0

  def start
    @@total_starts += 1
    puts "Vroom"
  end

  def self.total_starts
    @@total_starts
  end
end

car = Car.new

car.start
p Car.total_starts # 1
car.start
p Car.total_starts # 2
car.start
p Car.total_starts # 3