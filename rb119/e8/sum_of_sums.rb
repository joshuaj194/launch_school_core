# Write a method that takes an Array of numbers and then returns the sum of the sums of each leading subsequence for that Array. You may assume that the Array always contains at least one number.

=begin
Probem:
 Input:array
 Output:integer

 Implicit Reqs: it's not just the sum. It's the sum of each combination of sequences starting with the first element. 
 Explicit Reqs: return the sum of sums as an array

Examples:
 with 0? 
 with high numbers? 
 with negative numbers? 

Data Structures:
 Input: 
 Output:
 Returning the same object or new object? 

Algorithm:

Find all sequences starting with the first element.
  iterate through the array and generate a sequence starting with first element, then first element + second element, then first + second + third...the last sequence is the calling array itself. 
Find the sums of all those sequences
Combine the sums from step 2
return combined sum of sums. 


Code w/ Intent:
=end

def sequences(arr)
  possible_sequences = []
  counter = 0

  loop do 
    break if possible_sequences.last == arr
    possible_sequences << arr[0..counter]
    counter += 1
  end

  possible_sequences
end

def sum_of_sums(arr)
  sequences = sequences(arr)

  sequences.flatten.sum
end

# Examples:

p sum_of_sums([3, 5, 2]) == 21
p sum_of_sums([1, 5, 7, 3]) == 36
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35