# Write a method that takes an Array of numbers, and returns an Array with the same number of elements,
#  and each element has the running total from the original Array.

# A running total is the sum of all values in a list up to and including the current element. 
# Thus, the running total when looking at index 2 of the array [14, 11, 7, 15, 20] is 32 (14 + 11 + 7), 
# while the running total at index 3 is 47 (14 + 11 + 7 + 15).

def running_total(arr)
  start = 0
  arr.map do |item|
    item += start
    start = item
  end
end

# Examples:


puts running_total([2, 5, 13]) == [2, 7, 20]
puts running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
puts running_total([3]) == [3]
puts running_total([]) == []

p running_total([2, 5, 13])