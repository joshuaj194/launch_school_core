[1, 2, 3].map do |num|
  if num > 1
    puts num
  else
    num
  end
end

# What is the return value of the following code? Why?

=begin

okay so there's a puts method in the if/else which should return as 'nil'
so numbers greater than 1 will be nil, but those that are not will be returned
so the return for the method will be:

[1, nil, nil]
=end