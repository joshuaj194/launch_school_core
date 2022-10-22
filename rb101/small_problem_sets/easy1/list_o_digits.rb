# Write a method that takes one argument, a positive integer, and returns 
# a list of the digits in the number.

def digit_list(val)
  val.digits.reverse
end

puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true

# input: integer
# output: array

# requirements:
#   explicit:
#     take an integer and turn it into an array

#   implicit:
#     if it's a single digit number, just return the number as the sole element
#     in the array
#     numbers in the returned list do not need to be unique

# Clarifications:
#   Can I use an existing method? Seems so since there is not an explicit


