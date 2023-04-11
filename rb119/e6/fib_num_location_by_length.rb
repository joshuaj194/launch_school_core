# The Fibonacci series is a series of numbers (1, 1, 2, 3, 5, 8, 13, 21, ...) such that the first 2 numbers are 1 by definition, and each subsequent number is the sum of the two previous numbers. This series appears throughout the natural world.

# Computationally, the Fibonacci series is a very simple series, but the results grow at an incredibly rapid rate. For example, the 100th Fibonacci number is 354,224,848,179,261,915,075 -- that's enormous, especially considering that it takes 6 iterations before it generates the first 2 digit number.

# Write a method that calculates and returns the index of the first Fibonacci number that has the number of digits specified as an argument. (The first Fibonacci number has index 1.)

=begin
Probem:
 Input:integer
 Output:integer

 Implicit Reqs: if using an array, first val must be 0
 Explicit Reqs: 1 must be at index 1. Return the index based on the provided length. 

Examples:
 with 0? 
 with high numbers? 
 with negative numbers? 

Data Structures:
 Input: integer 
 Output: integer
 Returning the same object or new object? no

Algorithm:

We are provided a length
we need to find the first value of that length in the sequence
  we need to create a loop that adds to an array until the value of provided length is found. 
the sequence contains integers but .length is not a method available to integers. 
So we need to transform the values to strings before comparing their lengths to the provided lengths
once we find the first value that matches the provided length, we need that values index
since we need 1 to be at index 1, we can use an array starting with 0 at index 0. A consequence of this is that the returned index will be off by 1 so final index = returned_index - 1. 

fib_arr = [0]
fib_arr << 1
until fib_arr.last.to_s.length = provided_length
  fib_arr << fib_arr.sum
end

index = fib_arr.length - 1
index
  


Code w/ Intent:
=end


# Examples:
require 'pry'

def find_fibonacci_index_by_length(provided_length)
  fib_arr = [0]
  fib_arr << 1
  until fib_arr.last.to_s.length == provided_length
    fib_arr << (fib_arr[-1] + fib_arr[-2])
  end

  # binding.pry
  index = fib_arr.length - 1

  index
end


puts find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
puts find_fibonacci_index_by_length(2)
puts find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
puts find_fibonacci_index_by_length(3)
puts find_fibonacci_index_by_length(10) == 45
puts find_fibonacci_index_by_length(10)
puts find_fibonacci_index_by_length(100) == 476
puts find_fibonacci_index_by_length(100)
puts find_fibonacci_index_by_length(1000) == 4782
puts find_fibonacci_index_by_length(1000)
puts find_fibonacci_index_by_length(10000) == 47847
puts find_fibonacci_index_by_length(10000)