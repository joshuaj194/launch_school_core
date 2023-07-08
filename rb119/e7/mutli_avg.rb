# Write a method that takes an Array of integers as input, multiplies all the numbers together, divides the result by the number of entries in the Array, and then prints the result rounded to 3 decimal places. Assume the array is non-empty.

# examples:

=begin
Probem:
 Input: array of integers
 Output: float rounded to three decimal places

 Implicit Reqs: always return three decimal places worth of digits even if they are all 0's
 Explicit Reqs: mutliply elements instead of adding them and then divide by the number of elements

Examples:
 with 0? 
 with high numbers? 
 with negative numbers? 

Data Structures:
 Input: array
 Output: float
 Returning the same object or new object? new

Algorithm:

array
initialize a variable and assign it to the integer 1
iterate through the elements in the array and multiply and reassign the current value of the initialized variable by each element in the array
turn that variable into a float
turn the array's length into a float
divide and assign the variable by the array-length-in-float
call the .floor method with an argument of '3' on the variable
return the output of the above statement


Code w/ Intent:
=end

def show_multiplicative_average(arr)
  out = 1
  arr.each do |val|
    out *= val
  end

  out = out.to_f / arr.length.to_f
  out.ceil(3)
end


puts show_multiplicative_average([3, 5])                # => The result is 7.500
puts show_multiplicative_average([6])                   # => The result is 6.000
puts show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667