def reduce(arr, start=(arr[0]))
  if start == arr[0]
    counter = 1
  else
    counter = 0
  end

  start_val = start

  while counter < arr.size
    start_val = yield(start_val, arr[counter])
    counter += 1
  end

  start_val
end

array = [1, 2, 3, 4, 5]

p reduce(array) { |acc, num| acc + num }                    # => 15
p reduce(array, 10) { |acc, num| acc + num }                # => 25
# p reduce(array) { |acc, num| acc + num if num.odd? }        # => NoMethodError: undefined method `+' for nil:NilClass
p reduce(['a', 'b', 'c']) { |acc, value| acc += value }     # => 'abc'
p reduce([[1, 2], ['a', 'b']]) { |acc, value| acc + value } # => [1, 2, 'a', 'b']