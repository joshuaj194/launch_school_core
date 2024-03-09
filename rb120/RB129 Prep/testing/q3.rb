module Round
  def is_round?
    puts "Yes, I'm round"
  end
end

class Shape
  def description
    puts "I'm a #{self.class}"
  end

  def next_ancestor
    puts self.class.ancestors[1]
  end
end

class Rectangle < Shape; end
class Square < Rectangle; end
class Circle < Shape
  include Round

end

circle = Circle.new
square = Square.new
rectangle = Rectangle.new

circle.description # I'm a Circle
square.description # I'm a Square
rectangle.description # I'm a Rectangle

circle.next_ancestor # Round
square.next_ancestor # Rectangle
rectangle.next_ancestor # Shape

circle.is_round? # Yes I'm round
square.is_round? # This should raise an error
rectangle.is_round? # This should raise an error if the previous line is commented out