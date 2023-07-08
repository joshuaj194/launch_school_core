# Write a method that takes an array of integers and returns the
# two numbers that are closest together in value.

# Examples:

=begin
  P: given a list of numbers, find the 2 numbers that are closest in value
  i: an array of integers
  o: an array of the two numbers that meet the criteria above
  implicit: if there are two ranges, return the first one 

  E/D: [12, 7, 17] => 12, 7 = 5 ; 12, 17 = 5 ; 7, 17 = 10
  
    array => build up a nested array of all the number combos => array

  A: - build up the array of all the combos of pairs
        - start at the first number, add the second number
            - first number, third number... 
        - go to the second number, add the next number  
            - second number, 

            [12, 7, 17] >  [12, 7], [12 ,17], [7, 17]
     - find out the absolute difference of all the combos
     - find smallest difference
     - returned the two numbers that produced that 
=end

# algo
=begin
1. Find all combos
  1. Iterate through the input array. 
    1. Every combo has a first and second value. First value is always the element in the current iteration. Start a second iteration where the second value starts as the (index of current iteration element + 1). Second value increases by 1 at the end of each second iteration. Repeat until second value == arr.length aka the last value in the array
    2. Iterate until first value == arr.length - 1 aka the last value
2. Find the difference in the combos
  1. create a lowest variable and assign it to sum of the input array. Create an empty "output" array.
  2. iterate through all possible combos
  3. find the difference and compare it to the "lowest" variable. 
  4. if the difference is lower than the lowest, re-assign the "output array" to point to the current combo and re-assign lowest to point to the current difference. 
  5. Iterate through all combos.
3. Return output_array
=end

def combos(arr)
  combos = []

  arr.each_with_index do |val, idx|
        if idx == arr.length - 1
          next
        else
          first = idx
          second = idx + 1
          loop do 
            combos << [arr[first], arr[second]]
            second += 1
            break if second == arr.length
          end
        end
  end

  combos
end

def closest_numbers(arr)
  lowest = arr.sum
  output = []
  pairs = combos(arr)

  pairs.each do |pair|
    difference = (pair[0] - pair[1]).abs
    
    if difference < lowest
      lowest = difference
      output = pair
    else
      next
    end
  end

  output
end


p closest_numbers([5, 25, 15, 11, 20]) == [15, 11]
p closest_numbers([19, 25, 32, 4, 27, 16]) == [25, 27]
p closest_numbers([12, 7, 17]) == [12, 7]