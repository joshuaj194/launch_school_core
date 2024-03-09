class GoodDog
  DOG_YEARS = 7

  attr_accessor :name

  def initialize(n, a)
    @name = n
    @age  = a * DOG_YEARS
  end

  private

  attr_accessor:age

  def to_s
    "This dog's name is #{name} and it is #{age} in dog years."
  end
end

sparky = GoodDog.new("Sparky", 4)

puts sparky
p sparky