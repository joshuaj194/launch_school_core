[[1, 2], [3, 4]].map do |arr|
  arr.map do |num|
    num * 2
  end
end

=begin
What will the return value be in this example? Use what you've learned so far to break it down on your own before checking the solution below.
10:47
In line 1, the `map` method is called on the multidimensional array. The map method takes a block as an argument and that block first assigns the value of sub-array in the current iteration to the local variable `arr`. On line 2, we have a second `map` called on the sub-array in the current iteration of the outer map method. The inner map method also takes a block which in turn assigns the element of current inner-map-iteration from the sub-array of the current-outer-map iteration to the local variable `num`. One line 3, num is multiplied by 2 and the resulting value is appended to the new array which the map method always returns.
=end