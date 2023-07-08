# Write a method that returns a list of all substrings of a string that start at the beginning of the original string. The return value should be arranged in order from shortest to longest substring.

# Examples:

=begin
Probem:
 Input:string
 Output: array of substrings

 Implicit Reqs: always return an array even if it only contains a single substring
 Explicit Reqs: return an array containing all substrings that start with the first letter in the string argument

Examples:
 with 0? 
 with high numbers? 
 with negative numbers? 

Data Structures:
 Input: 
 Output:
 Returning the same object or new object? 

Algorithm:

initialize a variable and assign it to an empty array
iterate through the string until the last substring is the same length as the string argument



Code w/ Intent:
=end

def leading_substrings(str, start = 0)
  arr = []
  counter = 1

  until arr.last == str
    arr << str[start, counter]
    counter += 1
  end

  arr
end

puts leading_substrings('abc') == ['a', 'ab', 'abc']
puts leading_substrings('abc')
puts leading_substrings('a') == ['a']
puts leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']