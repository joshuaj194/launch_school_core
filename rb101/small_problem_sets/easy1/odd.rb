# Write a method that takes one integer argument, which may be positive, 
# negative, or zero. This method returns true if the number's absolute value 
# is odd. You may assume that the argument is a valid integer value.

# input: integer that can be +, - or 0
# output: boolean
# requirements:
#   return `true` if absolute value of the input is odd

def is_odd?(val)
  !(val.abs % 2 == 0)
end

puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true