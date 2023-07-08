# Write a method that takes two Array arguments in which each Array contains a list of numbers, and returns a new Array that contains the product of each pair of numbers from the arguments that have the same index. You may assume that the arguments contain the same number of elements.

# examples: 

=begin
Probem:
 Input:multi-dimensional array
 Output: single dimensional array

 Implicit Reqs:
 Explicit Reqs:multiply values from each array at the same index to create the value for that index in the output array

Examples:
 with 0? 
 with high numbers? 
 with negative numbers? 

Data Structures:
 Input: multi-arr
 Output: arr
 Returning the same object or new object? new object

Algorithm:

initialise a new empty array that will ultimately be returned by the method
Iterate through all elements in the sub-array
set a variable `counter` to zero to track the index of the iterations
use the counter to target access elements at specific array indices
multiply the accessed elements and add the output to the output array we first initialised. 

Code w/ Intent:
=end

def multiply_list(arr1, arr2)
  out_arr = []
  counter = 0
  length = arr1.length

  until counter >= length
    out_arr << arr1[counter] * arr2[counter]
    counter += 1
  end

  out_arr
end

puts multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
puts multiply_list([3, 5, 7], [9, 10, 11])