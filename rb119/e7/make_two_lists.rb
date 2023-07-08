# Write a method that combines two Arrays passed in as arguments, and returns a new Array that contains all elements from both Array arguments, with the elements taken in alternation.

# You may assume that both input Arrays are non-empty, and that they have the same number of elements.

=begin
Probem:
 Input:two arguments - arrays 
 Output:a single array combining the two arguments    

 Implicit Reqs:
 Explicit Reqs:

Examples:
 with 0? 
 with high numbers? 
 with negative numbers? 

Data Structures:
 Input: arrays
 Output: array
 Returning the same object or new object? 

Algorithm:

output = []

0..(arg_length - 1).times do |index|
  output << arg1[index]
  output << arg2[index]
end

output



Code w/ Intent:
=end


# Example: 
def interleave(arg1, arg2)
  output = []

  0..(arg1.length).times do |index|
    output << arg1[index]
    output << arg2[index]
  end

  output
end


puts interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
p interleave([1, 2, 3], ['a', 'b', 'c'])