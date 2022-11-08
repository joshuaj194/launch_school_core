my_arr = [[18, 7], [3, 12]].each do |arr|
  arr.each do |num|
    if num > 5
      puts num
    end
  end
end

# What is the type of action being performed (method call, block, conditional, etc..)?
# What is the object that action is being performed on?
# What is the side-effect of that action (e.g. output or destructive action)?
# What is the return value of that action?
# Is the return value used by whatever instigated the action?

=begin
line 1
A value is being assigned
variable named my_arr
none
returns the value of the variable
no

line 1
`each` method is being called 
on a multidimensional array
none
self
yes, the return value is assigned to the variable my_arr

line 1 - 7
block 
on each inner array passed in as local variable `arr`
none
nil ??INCORRECT: Each sub-array is returned??
returned to the `each` method in line 1 but NOT used by the `each` method

line 2
`each` method is being called 
on each element with each inner-array; elements are passed in as the local variable `num`
none
self
no, it's not used ??INCORRECT: It's used to determine the value of the outer block??

line 2 - 6
block 
on each element within each of the inner arrays; passed in as local variable `num`
none
nil
returned to the `each` method in line 2 but NOT used by the `each` method

line 3- 5
conditional
on each element within each of the inner arrays; passed in as local variable `num`
none
nil
No ??INCORRECT: It's used to determine the value of the inner block??

line 3
conditional ??INCORRECT: comparison(>)??
on each element within each of the inner arrays; passed in as local variable `num`
none
true or false
used by the conditional: if true, line 4 is executed. If false, the conditional ends


line 4
puts method
on each element within each of the inner arrays that returns true for the conditional; 
outputs a string representation of an integer
nil
no ??INCORRECT:  Yes, used to determine return value of the conditional statement if the 
condition is met??

=end

