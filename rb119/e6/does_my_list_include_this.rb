# Write a method named include? that takes an Array and a search value as arguments. This method should return true if the search value is in the array, false if it is not. You may not use the Array#include? method in your solution.

=begin
Probem:
 Input:array, value
 Output:boolean - true or false

 Implicit Reqs:
 Explicit Reqs:cannot use array#include?

Examples:
 with 0? 
 with high numbers? 
 with negative numbers? 

Data Structures:
 Input: 
 Output:
 Returning the same object or new object? 

Algorithm:

iterate through array argument and compare each element to the value argument
if any match exactly, return true and break out of the loop immediately.
if no match, return false.


Code w/ Intent:
=end

def include?(arr, val)

  if arr.any?(val)
    true
  else
    false
  end
  
end

puts include?([1,2,3,4,5], 6) == false
puts include?([1,2,3,4,5], 6)
puts include?([1,2,3,4,5], 3) == true
puts include?([1,2,3,4,5], 3)
puts include?([], 3) == false
puts include?([], 3)
puts include?([nil], nil) == true
puts include?([nil], nil)
puts include?([], nil) == false
puts include?([], nil)