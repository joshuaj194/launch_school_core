# Let's say we have the following data structure of nested arrays and we want to increment 
# every number by 1 without changing the data structure.

[[[1, 2], [3, 4]], [5, 6]].map do |arr|
  arr.map do |el|
    if el.to_s.size == 1    # it's an integer
      el + 1
    else                    # it's an array
      el.map do |n|
        n + 1
      end
    end
  end
end

=begin
the outermost `map` will return a new array
the second level map will also return a new array but for each sub-array within the 
calling array
the third `map` returns a new array for each array with the first sub-array passed to
to the second `map` via the local variable `el`
the block associated with the third `map` returns each element within each array within 
the first sub-array increased by 1. This new value is returned back to the second `map`
method which uses the new values in the new array it returns. The new array the second
`map` returns in turn is used to build the new return array that the first `map` method
returns. 

return value => [[[2,3], [4,5]],[6,7]]