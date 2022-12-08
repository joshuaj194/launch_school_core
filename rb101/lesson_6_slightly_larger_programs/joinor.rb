def joinor(arr, separator = ', ', last = 'or')
  str_out = ''
  counter = 0
  if arr.length == 1
    str_out += "#{arr[counter]}"
  elsif arr.length == 2
    str_out += "#{arr[counter]} " + last + " #{arr[counter + 1]}"
    return str_out
  end
  loop do
    break if counter == arr.length - 2
    str_out += "#{arr[counter]}" + separator
    counter += 1
    end
  str_out += "#{arr[counter]}" + separator + last + " #{arr[counter + 1]}"
end

puts joinor([1, 2])                   # => "1 or 2"
puts joinor([1, 2, 3])                # => "1, 2, or 3"
puts joinor([1, 2, 3], '; ')          # => "1; 2; or 3"
puts joinor([1, 2, 3], ', ', 'and')   # => "1, 2, and 3"