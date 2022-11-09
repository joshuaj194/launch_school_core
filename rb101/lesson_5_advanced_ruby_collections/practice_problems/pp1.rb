# How would you order this array of number strings by descending numeric value?

def sort_desc(arr)
  counter = 0
  sorted_arr = []
  lowest_num = arr[0]
  loop do 
    counter += 1
    break if counter > arr.length
    if counter == arr.length
      sorted_arr << lowest_num
    elsif arr[counter].to_i > lowest_num.to_i
      sorted_arr << arr[counter]
    else
      sorted_arr << lowest_num
      lowest_num = arr[counter]
    end
  end
  sorted_arr
end

ex_arr = ['10', '11', '9', '7', '8']

puts sort_desc(ex_arr)

# the solution was much simpler and I didn't have to write all this ^. The instructions
# were unclear. I thought they meant not to use any methods at all. But it says to stick
# with the methods from the previous 3 assignments so I need to learn to read more carefully
