def rolling_buffer1(buffer, max_buffer_size, new_element)
  buffer << new_element
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

def rolling_buffer2(input_array, max_buffer_size, new_element)
  buffer = input_array + [new_element]
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

arr = [1,2,3,4]
puts rolling_buffer2(arr, 2, 5)
puts arr

rolling_buffer1(arr, 2, 5)
puts arr