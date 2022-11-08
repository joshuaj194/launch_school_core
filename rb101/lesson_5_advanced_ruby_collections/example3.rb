# try taking apart an example on your own.

[[1, 2], [3, 4]].map do |arr|
  puts arr.first
  arr.first
end

# What is the type of action being performed (method call, block, conditional, etc..)?
# What is the object that action is being performed on?
# What is the side-effect of that action (e.g. output or destructive action)?
# What is the return value of that action?
# Is the return value used by whatever instigated the action?

=begin
line 1
The `map` method 
the outer array
no side effect
returns a new array
No, it's just returned

lines 1 - 4
A block is being called 
the inner arrays which are being passed in to the local variable `arr`
none
returns the value at index 0 for each inner-array
1; 3
Yes, the return value is used by the `map` method to create the new array it returns

line 2
the puts method is called
on the value at index 0 of the inner arrays passed in as local variable `arr`
nil
no because it's not the last line in the block and a `return` was not explicitly called

line 3
the first method is called
on the value at index 0 of the inner arrays passed in as local variable `arr`
no side effect
1; 3
yes, they are used in the new array returned by the map method. 
=end
