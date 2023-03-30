=begin 
Sort the given array of strings in alphabetical order, case insensitive. For example:


["Hello", "there", "I'm", "fine"]  -->  ["fine", "Hello", "I'm", "there"]
["C", "d", "a", "B"])              -->  ["a", "B", "C", "d"]
=end 

=begin
in: array
  out: array

  problem: order elements in an array alphabetically

  explicit: 
    elemetns are strings
    no integers or other data types
  implicit:
    returns a new array 

  ds: 
input: array
output: array

algo:
  SET new_arr = []
  Sort the Array
  In order to sort, all elements must be downcase
  downcase elements
  sort elements
  this provides desired order

  now, how to get the original state of the elements? 

note:
 sort method respects capitalization

Create a new array and create a sub_array for every elem in the original array that contains the elem and it's downcased version. 

sort the sub_arrays on the downcased version 
add the original elem to the final output Array

 code:
=end
def sortme(arr)
  # arr.sort_by {|w| w.downcase}
  arr.map {|word| [word.downcase, word]}.sort.map {|pair| pair[1]}
  # new_arr = []
  # out_index = 0
  # in_index = 0
  # arr.each do |elem|
  #   new_arr[out_index][in_index] = elem
  #   in_index += 1
  #   new_arr[out_index][in_index] = elem.downcase
  #   in_index = 0
  #   out_index += 1
  # end
  # new_arr
end

# test cases 
p sortme(["Hello", "there", "I'm", "fine"]) == ["fine", "Hello", "I'm", "there"]
p sortme(["C", "d", "a", "B"]) == ["a", "B", "C", "d"]
p sortme(["CodeWars"]) == ["CodeWars"]
