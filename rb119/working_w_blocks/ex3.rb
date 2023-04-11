[[1, 2], [3, 4]].map do |arr|
  puts arr.first
  arr.first
end

=begin
In line 1, we have the `map` method called on the multi-dimensional array.
This method returns a new array using the return values of the block that it
takes as an argument. The block in lines 2-3 first assigns the value of each
sub-array to the local variable `arr`. Then in line 2, the `first` method is 
and the return value of method is passed to the puts method which in turn 
outputs that value and returns a nil value. The `first` method returns the 
value at the 0-index within an array. One line 3, the `first` method is once
again called on the `arr` variable but this time the return value of the 
`first` method becomes the return value of the block since it is the last 
expression in the block.Since the `map` method uses the return value of the 
block to create the new array, the return values from each iteration of the
block forms the array returned by the map method. In this case, the return
array is [1,3].

=end
