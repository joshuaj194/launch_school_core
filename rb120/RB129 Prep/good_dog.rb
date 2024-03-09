class GoodDog
  DOG_YEARS = 7

  attr_accessor :name, :age

  def initialize(n, a)
    self.name = n
    self.age = a
  end

  # assume the method definition below is above the "private" method

  def public_disclosure
    "#{self.name} in human years is #{self.human_years}"
  end

  private

  def human_years
    age * DOG_YEARS
  end
end

sparky = GoodDog.new("Sparky", 4)
# sparky.human_years
puts sparky.public_disclosure