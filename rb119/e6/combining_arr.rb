# Write a method that takes two Arrays as arguments, and returns an Array that contains all of the values from the argument Arrays. There should be no duplication of values in the returned Array, even if there are duplicates in the original Arrays.

# Example

=begin
Probem:
 Input: two arrays
 Output:single array with unique values from the argument arrays

 Implicit Reqs:
 Explicit Reqs:

Examples:
 with 0? 
 with high numbers? 
 with negative numbers? 

Data Structures:
 Input: 
 Output:
 Returning the same object or new object? 

Algorithm:



Code w/ Intent:
=end

def merge(arr1, arr2)
  (arr1 + arr2).uniq
end

puts merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]
puts merge([1, 3, 5], [3, 6, 9])