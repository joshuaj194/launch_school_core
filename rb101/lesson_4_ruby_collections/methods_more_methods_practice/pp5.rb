hash = { a: 'ant', b: 'bear' }
hash.shift

# What does shift do in the following code? How can we find out?

=begin
the docs again. 
Removes a key-value pair from hsh and returns it as the two-item
 array [ key, value ], or the hash's default value if the hash is empty.

so the return value should be:

[:a, 'ant']
=end