def multiply(val1, val2)
  val1 * val2
end

def square(val)
  multiply(val, val)
end

puts square(5) == 25
puts square(-8) == 64