# If you take a number like 735291, and rotate it to the left, you get 352917. If you now keep the first digit fixed in place, and rotate the remaining digits, you get 329175. Keep the first 2 digits fixed in place and rotate again to 321759. Keep the first 3 digits fixed in place and rotate again to get 321597. Finally, keep the first 4 digits fixed in place and rotate the final 2 digits to get 321579. The resulting number is called the maximum rotation of the original number.

# Write a method that takes an integer as argument, and returns the maximum rotation of that argument. You can (and probably should) use the rotate_rightmost_digits method from the previous exercise.

# Note that you do not have to handle multiple 0s.
e
require 'pry'

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

def max_rotation(intr)
  start = intr.to_s.length
  until start == 1
    intr = rotate_rightmost_digits(intr, start)
    start -= 1
  end 

  output = intr
  
end



# Example:


puts max_rotation(735291) == 321579
puts max_rotation(735291)
puts max_rotation(3) == 3
puts max_rotation(3)
puts max_rotation(35) == 53
puts max_rotation(35)
puts max_rotation(105) == 15 # the leading zero gets dropped
puts max_rotation(105)
puts max_rotation(8_703_529_146) == 7_321_609_845
puts max_rotation(8_703_529_146)