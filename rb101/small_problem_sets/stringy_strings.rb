# Write a method that takes one argument, a positive integer, and returns a 
# string of alternating 1s and 0s, always starting with 1. The length of the 
# string should match the given integer.

=begin
input: positive integer as an argument
output: string of 1s and 0s
requirements:
- always starts with 1
- alternates 1 and 0

examples/test cases at the end

data structures:
input: positive integer as an argument
output: string of 1s and 0s

algo:
- set binary_arr equal to [1]
- define method
    arg.times do
      if binary_arr.last is equal to 1
        add '0' to the binary_arr
      else if binary_arr.last is equal to 0
        add '1' to the binary_arr
      else
    end 

    binary_arr.join
  end

=end

def stringy(num, start = '1')
  binary_arr = [start]

  (num-1).times do
    if binary_arr.last == '1'
      binary_arr << '0'
    elsif binary_arr.last == '0'
      binary_arr << '1'
    end
  end

  binary_arr.join
end



puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7,) == '1010101'
puts stringy(7,'0') == '0101010'


