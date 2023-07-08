# Write a method that returns the next to last word in the String passed to it as an argument.

# Words are any sequence of non-blank characters.

# You may assume that the input String will always contain at least two words.

=begin
Probem:
 Input:string
 Output:string

 Implicit Reqs:
 Explicit Reqs: return next-to-last string from the input string

Examples:
 with 0? 
 with high numbers? 
 with negative numbers? 

Data Structures:
 Input: strin
 Output:string
 Returning the same object or new object? new object

Algorithm:

initialize an empty variable 
Split the string by spaces to create an array of the words in a sring
use array indices to target the second to last element in the array
assign the variable from step1 to point at the return value from step 3

Code w/ Intent:
=end

def penultimate(str)
  out_str = ""
  arr = str.split(" ")
  out_str = arr[-2]
  out_str
end

# Examples:

puts penultimate('last word') == 'last'
puts penultimate('Launch School is great!') == 'is'

