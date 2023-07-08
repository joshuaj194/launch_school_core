# Write a method that takes one argument: an array of integers.
# The method should return the minimum sum of 5 consecutive
# numbers in the array. If the array contains fewer than 5
# elements, the method should return nil.

# The tests above should print "true".

=begin
Probem:
 Input:an array of integers - both positive and negative, ranging in `size`
 Output:`nil` if the lenght of the input array is less than 5. Otherwise, the minimum sum of 5 consecutive numbers in the array. 

 Implicit Reqs:
 Explicit Reqs: single integer returned or `nil`.

Examples:
 with 0? 
 with high numbers? 
 with negative numbers? 

Data Structures:
 Input: array
 Output: integer or `nil`
 Returning the same object or new object? new object

Algorithm:


1. Return `nil` if the input arr contains less than 5 elements. This will be our first check. 
2. If it contains 5 or more elements, find all possible groupings of 5 elements.
  1. To find all possible groupings, we can iterate through the input array and use the index of the current iteration value as the starting value of a range and the ending value will be index + 4 (because 0 index) to pull an array of 5 elements. Check to see if the ending value is a legitimate index in the input array. If not, break. If it is, move forward. 
  2. The array of 5 elements can be added to a "possible groupings" array
  2. We iterate until the ending value is equal to the size of the input array.
3. Identify the sum of all those groupings of 5
  1. We iterate through the possible groupings array and find the sum of each sub-array in that array. 
  2. We can store these values in a new array called sums
4. Find and return the lowest sum. 
  Sort sums and return the first value because sort returns values in ascending order. 


Code w/ Intent:
=end


def minimum_sum(arr)

  return nil if arr.length < 5

  possible_groups = []
  
  arr.each_with_index do |val, idx|
    starting = idx
    ending = idx + 4

    # if arr.values_at(ending) == [nil]
    if ending == arr.length - 1
      break
    else
      possible_groups << arr[starting..ending]
    end
  end

  sums = possible_groups.map do |arr|
    arr.sum
  end

  sums.sort[0]
end

# Examples:

p minimum_sum([1, 2, 3, 4]) == nil
p minimum_sum([1, 2, 3, 4, 5, 6])  == 15
p minimum_sum([55, 2, 6, 5, 1, 2, 9, 3, 5, 100]) == 16
p minimum_sum([-1, -5, -3, 0, -1, 2, -4]) == -10
      


