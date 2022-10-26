[1, 2, 3].reject do |num|
  puts num
end

# What is the return value of reject in the following code? Why?

=begin
According to the docs, `reject` "Returns a new array containing the items in 
self for which the given block is not true. The ordering of non-rejected 
elements is maintained."

so in this case, the return value for the block will be `nil` which is
indeed "not true" so every element in the caller should be returned in 
the new collection. 

[1, 2, 3]
=end