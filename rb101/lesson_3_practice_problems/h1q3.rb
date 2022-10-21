def mess_with_vars(one, two, three)
  one = two
  two = three
  three = one
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"
puts "two is: #{two}"
puts "three is: #{three}"

# "one is: one"
# "two is: two"
# "three is: three"

# because the method reassigns local variables w/o mutating the arguments. 
# what about variable shadowing? 

def mess_with_vars(one, two, three)
  one = "two"
  two = "three"
  three = "one"
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"
puts "two is: #{two}"
puts "three is: #{three}"

# "one is: one"
# "two is: two"
# "three is: three"

# because the method is not mutating the callers but it is re-assigning
# the value of the inner-scope variables. Variable shadowing prevents 
# the caller (outer-scope local variables) from being mutated.

def mess_with_vars(one, two, three)
  one.gsub!("one","two")
  two.gsub!("two","three")
  three.gsub!("three","one")
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"
puts "two is: #{two}"
puts "three is: #{three}"

# "one is: two"
# "two is: three"
# "three is: one"

# because the method IS mutating the callers 