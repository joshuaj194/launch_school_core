# Write a method that takes an Array of numbers, and returns an Array with the same number 
# of elements, and each element has the running total from the original Array.

# Examples:

# require "pry"

# def running_total(arr)
#   arr.map do |elem|
#     counter = arr.index(elem)
#     total = 0
#     loop do
#       break if counter < 0
#       total += arr[counter]
#       elem = total
#       binding.pry
#       counter -= 1
#       return elem
#     end
#   end
# end
# # much too complicated above + poor execution. 


def running_total(array)
  sum = 0
  array.map { |value| sum += value }
end

puts running_total([2, 5, 13]) == [2, 7, 20]
puts running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
puts running_total([3]) == [3]
puts running_total([]) == []

puts running_total([2, 5, 13])
puts running_total([14, 11, 7, 15, 20])
puts running_total([3])
puts running_total([])
