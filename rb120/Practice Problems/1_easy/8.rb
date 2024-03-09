class Cat
  attr_accessor :type, :age

  @@cats_count = 0

  def initialize(type)
    @type = type
    @age  = 0
    @@cats_count += 1
  end

  def self.cats_count
    @@cats_count
  end
end

p Cat.cats_count

teddy = Cat.new('Persian')
p teddy.type
p teddy.age
# teddy.cats_count

p Cat.cats_count
p teddy.to_s
