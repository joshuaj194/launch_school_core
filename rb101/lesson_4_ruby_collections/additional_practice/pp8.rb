# What happens when we modify an array while we are iterating over it? 
# What would be output by this code?

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.shift(1)
end

# should return an empty numbers array

=begin
WRONG. 
it would actually return:
1
3

This is because `each` uses the index to track which element it is iterating
on. Since the array gets modified at each iteration, certain numbers are skipped.
For ex: The first time through, the loop is looking at the 0 index value which
would be 1. 1 is printed and then the shift happens which changes the array
to {2,3,4}. For the next iteration, the loop is looking at the 1 index value, 
which given the mutated array, is now 3. So 3 is printed. The shift happens which
once again mutates the array to {3,4} and another iteration does not occur because
the index value would be 2 which is equal to the length of the array {3,4}.
=end

# What would be output by this code?

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.pop(1)
end

# should return an empty numbers array

=begin
WRONG. 
it would actually return:
1
2

Similar to the above except pop removes the last item instead of the first. 
=end