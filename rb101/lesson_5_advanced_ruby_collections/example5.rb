[[1, 2], [3, 4]].map do |arr|
  arr.map do |num|
    num * 2
  end
end

# What is the type of action being performed (method call, block, conditional, etc..)?
# What is the object that action is being performed on?
# What is the side-effect of that action (e.g. output or destructive action)?
# What is the return value of that action?
# Is the return value used by whatever instigated the action?

=begin
line 1
map
multidimensional array
none
new array
no

lines 1 - 5 
outer block
each sub-array
none
new array
used by the `map` method in line 1

line 2 
map
inner arrays
none
new array
Yes, it's used to determine the return value of the outer block


lines 2 - 4
inner block
each element in the inner arrays
none
new sub-arrays containing the products of line 3 ??Incorrect: integer is the return vale??
Yes, it's used by the map method on line 2

line 3
`multiplication`
each element in the sub arrays
none
product of `num` and 2
Yes, it's used to determine the return value of the inner block
=end



