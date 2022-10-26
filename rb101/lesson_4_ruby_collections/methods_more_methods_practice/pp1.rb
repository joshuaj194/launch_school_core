[1, 2, 3].select do |num|
  num > 5
  'hi'
end

# What is the return value of the select method below? Why?

=begin
I thought it would be {nil, nil, nil}
but that is incorrect. It's actually {1, 2, 3}

I was correct that .select does use the return value of the block to determine
which elements to include in the NEW collection it creates. I was INCORRECT 
about the return value of 'hi'. I thought it was `nil` but it is the `puts`
method that returns a value of `nil`. "hi" is truthy so the block returns `true`
for every element and that's why each one is included in the collection
returned by the .select method. 
=end
