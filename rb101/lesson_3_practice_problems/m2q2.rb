a = 42
b = 42
c = a

puts a.object_id
puts b.object_id
puts c.object_id

=begin
I vaguely remember something about numbers being immutable so that means
that their object IDs cant change either so all three variables above should
share the same object_id
=end

