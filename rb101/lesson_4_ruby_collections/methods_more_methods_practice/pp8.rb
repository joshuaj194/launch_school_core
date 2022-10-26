arr = [1, 2, 3, 4, 5]
arr.take(2)


# How does take work? Is it destructive? How can we find out?

=begin
according to the docs, it takes the first n elements from the arr where n is
the argument passed in at the time of the method invocation. 

it doesn't appear to be destructive but the docs don't explicitly say so the
best way to confirm would be to test. 

return should be:

[1, 2] with no mutation to `arr`.
=end
