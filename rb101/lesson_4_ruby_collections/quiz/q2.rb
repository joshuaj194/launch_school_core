# Identify all of the code implementations that correctly meet the following 
# set of requirements.

# Given an array of strings representing integers, iterate through all of the 
# items in the array. If the integer value of the string is odd add it to a 
# new array of odd integer strings. Once iteration is complete the new array 
# should contain all of the odd integer strings from the original array.

# Note: the objective here is to test your ability to read and mentally reason 
# about the code. Try to answer this question without simply running each of 
# the code examples in their entirety.

=begin
input: array of strings representing integers aka [ '1', '2', '3', '4']
output: new array which includes the odd integer strings from the input array
requirements:
- new array 
- can only contain odd integer strings
- original array is unchanged
- elements in both arrays should be strings.

data structures:
- array with string elements
- each string element must be turned into an integer to check whether it is odd
- if odd, the STRING is added to the new array. 

ALGO:
intialize empty new array
method/code to iterate through the input array
for each element, turn it into an integer THEN check if odd. 
  IF TRUE, add the element to the new array
else NEXT iteration
end 

=end
