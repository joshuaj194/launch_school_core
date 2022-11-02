# Write a method that takes one argument, a positive integer, 
# and returns the sum of its digits.

# For a challenge, try writing this without any basic looping constructs 
# (while, until, loop, and each).

=begin
input: integer
output: integer
requirements: return the sum of digits that make up the integer arg

DS:
  in:integer
  out:integer

Algo:
take the integer arg
find the number of digits in the integer by turning it into a string and then
using string.length and set that value to a int_length variable
set counter to 0
set int_sum = 0
loop 
set int_sum += int[counter]
set counter += 1
break if counter == int_length


^ good idea but int[counter] does not work because int is not an array. 
  end
int_sum

=end

def sum(val)
  val.digits.sum
end

# Examples:
puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45

# The tests above should print true.

