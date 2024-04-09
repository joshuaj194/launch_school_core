class Triangle
  attr_reader :sides
  
  def initialize(s1,s2,s3)
    @sides = [s1,s2,s3]
    validate
  end

  def validate
    if sides.any? { |side| side <= 0}
      raise ArgumentError.new("sides must be greater than zero")
    elsif (sides[0] >= (sides[1] + sides[2])) ||
          (sides[1] >= (sides[0] + sides[2])) ||
          (sides[2] >= (sides[0] + sides[1]))
      raise ArgumentError.new("the sum of any two sides must be greater than the third")
    end
  end

  def kind
    case count_equal_sides
    when 1
      'equilateral'
    when 2
      'isosceles'
    when 3
      'scalene'
    end
  end

  def count_equal_sides
    sides.uniq.count
  end

end

p tri = Triangle.new(4,3,5)
p tri.kind