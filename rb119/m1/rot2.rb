# Write a method that can rotate the last n digits of a number.
# Note that rotating just 1 digit results in the original number being returned.

# You may use the rotate_array method from the previous exercise if you want. (Recommended!)

# You may assume that n is always a positive integer.

=begin
Probem:
 Input: integer
 Output: integer

 Implicit Reqs:
 Explicit Reqs: the element at -num index should move to -1 index; everything
else should go first but maintain their existing order relative to each other

Examples:
 with 0? 
 with high numbers? 
 with negative numbers? 

Data Structures:
 Input: 
 Output:
 Returning the same object or new object? 

Algorithm:

integer --> string --> array
  then turn each element back into an integer
  move them 
  turn each back to a string
  join the array 
  turn the string into an integer
Code w/ Intent:
=end

def rotate_rightmost_digits(int, num)
  arr = int.to_s.split("")
  
  if num > 2
    output_arr = arr[0..-(num+1)] + arr[-(num-1)..-1] + [arr[-(num)]]
    output_arr.join.to_i
  elsif num == 2
    output_arr = arr[0..-(num+1)] + [arr[-1]] + [arr[-(num)]]
    output_arr.join.to_i
  else
    int
  end

end


# examples:

puts rotate_rightmost_digits(735291, 1) == 735291
puts rotate_rightmost_digits(735291, 1)
puts rotate_rightmost_digits(735291, 2) == 735219
puts rotate_rightmost_digits(735291, 2)
puts rotate_rightmost_digits(735291, 3) == 735912
puts rotate_rightmost_digits(735291, 3)
puts rotate_rightmost_digits(735291, 4) == 732915
puts rotate_rightmost_digits(735291, 4)
puts rotate_rightmost_digits(735291, 5) == 752913
puts rotate_rightmost_digits(735291, 5)
puts rotate_rightmost_digits(735291, 6) == 352917
puts rotate_rightmost_digits(735291, 6)