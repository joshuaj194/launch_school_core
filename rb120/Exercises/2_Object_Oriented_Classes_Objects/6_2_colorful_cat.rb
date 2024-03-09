class Cat
  attr_accessor :name
  attr_reader :color

  def initialize(name, color="purple")
    self.name = name
    self.color = color
  end

  def color=(color)
    @color = color
  end

  def greet
    puts "Hi, my name is #{name} and I'm a #{color} cat."
  end

end

kitty = Cat.new('Sophie')
kitty.greet