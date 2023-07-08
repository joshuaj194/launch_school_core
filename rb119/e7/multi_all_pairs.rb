# Write a method that takes two Array arguments in which each Array contains a list of numbers, and returns a new Array that contains the product of every pair of numbers that can be formed between the elements of the two Arrays. The results should be sorted by increasing value.

# You may assume that neither argument is an empty Array.

=begin
Probem:
 Input:two arrays
 Output:one array

 Implicit Reqs: arrays can be of different lengths
 Explicit Reqs:return the product of every possible pair of elements between the two arrays; sort the results in ascending order 

Examples:
 with 0? 
 with high numbers? 
 with negative numbers? 

Data Structures:
 Input: two arrays
 Output:one array
 Returning the same object or new object? new object

Algorithm:

intialize a new variable and assign it to an empty array
iterate through the first array
in every iteration of the first array, iterate through the second array
  multiply the current element from the first array with current element in the second array
  add that product to the new variable we initialized


  once all elements in the first array have been iterated through, sort the array the variable we created is assigned to 
  return that array in sorted form
  

Code w/ Intent:
=end

def multiply_all_pairs(arr1, arr2)
  out_arr = []
  arr1.each do |val|
    arr2.each do |val2|
      out_arr << val * val2
    end
  end

  out_arr.sort!
end

# examples: 

puts multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]
puts multiply_all_pairs([2, 4], [4, 3, 1, 2])