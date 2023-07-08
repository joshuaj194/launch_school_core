# Write a method that takes an Array as an argument, and reverses its elements in place; that is, mutate the Array passed into this method. The return value should be the same Array object.

# You may not use Array#reverse or Array#reverse!.

# Examples:

=begin
Probem:
 Input:array
 Output:array reversed; same object

 Implicit Reqs:
 Explicit Reqs: must return the same object, the order of the elements in the array must be reversed. 

Examples:
 with 0? 
 with high numbers? 
 with negative numbers? 

Data Structures:
 Input: 
 Output:
 Returning the same object or new object? 

Algorithm:

sort the argument array by index and assign the return value to a variable
iterate through the argument array and assign each element to the matching element from the variable in step 1


Code w/ Intent:
=end

def reverse!(arr)

  reversed = arr.sort {|a, b| arr.index(b) <=> arr.index(a) }

  counter = 0

  until counter == arr.length
    arr[counter] = reversed[counter]
    counter += 1
  end

  arr
end

p list = [1,2,3,4]
p result = reverse!(list)
p result == [4, 3, 2, 1] # true
p list == [4, 3, 2, 1] # true
p list.object_id == result.object_id # true

p list = %w(a b e d c)
p reverse!(list) == ["c", "d", "e", "b", "a"] # true
p list == ["c", "d", "e", "b", "a"] # true

p list = ['abc']
p reverse!(list) == ["abc"] # true
p list == ["abc"] # true

p list = []
p reverse!(list) == [] # true
p list == [] # true

# Note: for the test case list = ['abc'], we want to reverse the elements in the array. The array only has one element, a String, but we're not reversing the String itself, so the reverse! method call should return ['abc'].
