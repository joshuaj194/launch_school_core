# Write a method that takes one argument, an array containing integers, and
# returns the average of all numbers in the array. The array will never be 
# empty and the numbers will always be positive integers. Your result should 
# also be an integer.

# The tests below should print true.

=begin

input: array of integers
output: integer
requirements: 
- positive integer return (not a float)

examples/test cases below

DS:
  in:
  out:

Algo:

=end

def average (arr)
  arr.sum/arr.length
end

puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40


