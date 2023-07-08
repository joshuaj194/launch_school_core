# Write a method that takes an Array as an argument, and returns two Arrays (as a pair of nested Arrays) that contain the first half and second half of the original Array, respectively. If the original array contains an odd number of elements, the middle element should be placed in the first half Array.

# Examples:

=begin
Probem:
 Input:array
 Output:multi-dimensional array containing two arrays each with half of the elements of the argument array  

 Implicit Reqs: always return an array containing two arrays even if empty; maintain the order of elements from the argument array
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

initialize output variable and assign it to empty multi-dimensional array. 
if the argument array includes an even number of elements, iterate through the array and add the first half of elements to the first nested array and the second half to the second nested array
  if odd, find the middle value and add all numbers up to that middle value and the middle value to the first nested array and the rest to the second nested array
return the array assigned to the output variable


Code w/ Intent:
=end

def halvsies(arr)
  output = [[],[]]
  mid_val = arr.length / 2

  arr.each_with_index do |val, index|
    if (arr.length % 2 != 0) && index <= mid_val
      output[0] << val
    elsif (arr.length % 2 == 0) && index < mid_val
      output[0] << val
    else
      output[1] << val
    end
  end

  output
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 2, 3, 4])
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]