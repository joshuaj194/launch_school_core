{ a: 'ant', b: 'bear' }.map do |key, value|
  if value.size > 3
    value
  end
end

# What is the return value of map in the following code? Why?

=begin
transformation so it looks for the return value of the block and creates a 
new collection. 

according to the docs, "With a block given, calls the block with successive 
elements; returns an array of the objects returned by the block:"

the block returns value if the value.size > 3 so the return of `.map` should
be: 

['bear'] or [nil, 'bear']. Just not sure what the block returns for elements
that don't meet the if criteria. 
=end


=begin
confirmed the solution is [nil, 'bear'] because "when none of the conditions 
in an if statement evaluates as true, the if statement itself returns nil. 
That's why we see nil as the first element in the returned array."
=end

