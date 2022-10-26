['ant', 'bat', 'caterpillar'].count do |str|
  str.length < 4
end

# How does count treat the block's return value? How can we find out?

=begin
look in the docs?
intuitively, it looks like a selection method so elements, which the 
block returns `true`, are added to the new collection which in turn is what is
returned by the .count method

confirmed ^ by reviewing https://ruby-doc.org/core-2.5.3/Array.html#method-i-count
=end 