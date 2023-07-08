# Given an array of numbers, for each number find out how many numbers
# in the array are smaller than it. When counting numbers, only count
# unique values. That is, if a given number occurs multiple times in
# the array, it should only be counted once.

# The tests above should print "true".

=begin
Probem:
 Input: an array of integers
 Output: an array of integers of equal length as the input array. 

 Implicit Reqs: If there are no elements that are less than the a given element, return 0. 
 Explicit Reqs: Return an array of equal length as the input where each element reflects the number of elements in the original array that are less than the element in that position in the original array. 

Examples:
 with 0? 
 with high numbers? 
 with negative numbers? n/a

Data Structures:
 Input: array of integers
 Output: array of integers
 Returning the same object or new object? new object. 

Algorithm:

approach:
array --> array, use .map 

iterate through the input array
for each element, we're going to:
  1. identify other elements in the array that are less than the current element
    comparison between "current element" and other elements
  2. store these in an array
  3. counting the number of the UNIQUE elements in the step 2 array.
    .uniq method + .length 
returning the result from step 3. This value is what should be populated in the output array.  


Code w/ Intent:
=end


def smaller_numbers_than_current(arr)

  arr.map do |elem|
    less_than_arr = []

    arr.each do |compare_to_elem|
      less_than_arr << compare_to_elem if (compare_to_elem < elem)
    end

    less_than_arr.uniq.length
    # less_than_arr
  end

end

# Examples:

p smaller_numbers_than_current([8,1,2,2,3])#  == [3, 0, 1, 1, 2]
p smaller_numbers_than_current([1,4,6,8,13,2,4,5,4])#  == [0, 2, 4, 5, 6, 1, 2, 3, 2]
p smaller_numbers_than_current([7,7,7,7])#  == [0,0,0,0]
p smaller_numbers_than_current([6,5,4,8])#  == [2, 1, 0, 3]
p smaller_numbers_than_current([1])#  == [0]
