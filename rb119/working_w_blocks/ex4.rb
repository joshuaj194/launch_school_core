my_arr = [[18, 7], [3, 12]].each do |arr|
  arr.each do |num|
    if num > 5
      puts num
    end
  end
end

=begin

Can you take this code apart, just like before? What will be output and what will be the value of my_arr? Check the solution below once you have tried this on your own.

24:12
One line 1, we are initializing the variable `my_arr` and assigning the return value of the `each` method on line 1 to this variable. The `each` on line 1 is called on the multidimensional array. The `each` method always returns the calling object as its return value. So in this case, the return value will be [[18, 7], [3,12]] and this value will be assigned to the variable `my_arr`. The `each` method is passed a block which spans from lines 1 - 7. In line 1, the block assigns the current sub-array to the local variable `arr`. In line 2, a second `each` method is called on the sub-array and it too is passed a block. This second block takes each element in the sub-array and assigns it to the local variable `num`. One line 3, we have a conditional statement checking to see if the value assigned to `num` is greater than 5. If it is, then the statement on line 4 is executed where the value assigned to `num` is passed to the puts method which in turn outputs that value to the screen and returns `nil`. If the value assigned ot `num` is not greater than 5, the inner block completes execution and returns the value assigned to num. The inner each method does not use the return value of the block and instead returns the calling object which is each sub-array to the outer block. The outer block returns each sub-array to the outer each method which also does not use the return value of the block and instead returns the calling object which is the multidimensional array. Thus, the calling object, the multi-dimensional array is assigned to the variable `my_arr`.

13:11

=end