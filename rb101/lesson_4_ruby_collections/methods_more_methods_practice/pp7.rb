[1, 2, 3].any? do |num|
  puts num
  num.odd?
end

# What is the block's return value in the following code? 
# How is it determined? Also, what is the return value of `any?` in this code
# and what does it output?

=begin
according to the docs, any? "Returns whether any element meets
 a given criterion.". 

The block would return the returned value of the final expression in the block
so that would the return value of num.odd? which would be `true` for elements
`1` and `3` but `false` for element `2`. Since there is atleast one `true` value
in the blocks return, the `any?` method will also return `true` and there
is no output. Not 100% sure about the output and the docs don't explicitly
say but the examples seem to show there is no other output?

was right about the return but wrong about the output but that's because
I was hyperfocused on the `num.odd?` and missed the `puts num`. The output is `1`
because the `any?` is only looking for a single truthy value and so when it finds
it, it doesn't have to go through the rest of the elements in the caller. 

=end




