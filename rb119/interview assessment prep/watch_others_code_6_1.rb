=begin

You are going to be given an array of integers. your job is to take that array and find an index N where the sum of the integers to the left of N is equal to the sum of the integers to the right of N. If there is no index that would make this happen, return -1. 

For example:

Let's say you are given the array [1,2,3,4,3,2,1]:
Your method will return the index 3, because at the 3rd position of the array, the sum of the left side of the index [1,2,3] and the sum of the right side of the index [3,2,1] both equal 6. 

Another one:
You are given the array [20,10,-80,10,10,15,35]
At index 0 the left side is []
The right side is [10,-80,10,10,15,35]
They are both equal to 0 when added. (empty arrays are equal to 0 in this problem)
Index 0 is the place where the left side and right side are equal

=end

=begin
Probem:
 Input: An array of integers both positive and negative. 
 Output: An integer reflecting the index at which the sum of the elements to the left of the index is equal to the sum of the elements to the right of the index. 

 Implicit Reqs: The value at the index itself does not count towards the sum of either the left or right side. An empty array on either side is considered to be '0'
 Explicit Reqs: returning the integer reflecting the index NOT the value. 

Examples:
 with 0? 
 with high numbers? 
 with negative numbers? 

Data Structures:
 Input: 
 Output:
 Returning the same object or new object? 

Algorithm:

we have an array
- iterate through the array
 - in each iteration, we're going to identify the "left" and the "right"
  - we're going to find the sum of the "left" and the "right"
  - compare the sums
  - if equal, return the current index
  - if not equal, go to the next iteration and repeat the process. 

- defining "left" and "right"
  - The current index is going to be our reference point. 
  - Elements in the "left" will be those from the beginning of the array up until the position that is ONE before the current index. 
    - for the first iteration, the "left" is always going to be equal to 0. 
    -  otherwise "start" is 0
    - "end" is (current index - 1)
  - Elements in the "right" will start with the position one AFTER the 
  current index going all the way through to the end of the array. 
    - for the last iteration, the "right" is always going to be equal to 0.
    - otherwise "start" is (current index + 1)
    - "end" is -1 reflecting the last element in the array.  
Code w/ Intent:
=end

require 'pry'

def find_even_index(arr)
  output = -1

  arr.each_with_index do |val, idx|
    left_end = idx - 1
    right_start = idx + 1

    
    if idx == 0
      left = []
    else
      left = arr[0..(left_end)]
    end

    
    if idx == (arr.length - 1)
      right = []
    else
      right = arr[(right_start)..-1]
    end

    
    if left == []
      left_sum = 0
    else
      left_sum = left.sum
    end

    
    if right == []
      right_sum = 0
    else
      right_sum = right.sum
    end

    # binding.pry
    if left_sum == right_sum
      output += (1 + idx)
      # binding.pry
    else
      next
    end

  end

  output
end




p find_even_index([1,2,3,4,3,2,1]) == 3
p find_even_index([1,100,50,-51,1,1]) == 1
p find_even_index([1,2,3,4,5,6]) == -1
p find_even_index([20,10,30,10,10,15,35]) == 3
p find_even_index([20,10,-80,10,10,15,35]) == 0
p find_even_index([10,-80,10,10,15,35,20]) == 6
p find_even_index([-1, -2,-3,-4,-3,-2,-1]) == 3