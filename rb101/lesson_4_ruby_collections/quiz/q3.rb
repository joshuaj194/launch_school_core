# Identify all of the code implementations that correctly meet the following set of 
# requirements.

# Given an array of integers, for each integer output all integers from 1 to 
# that integer; e.g. if the integer was 5, you would output 1, 2, 3, 4, 5.

# As with question two, try to answer without simply running the complete code 
# examples.

input: array of integers
output: integers

requirements:
iterate through the array, for each integer print all numbers leading up to that
number. 
implicit: start with the lowest non-zero number. 
print numbers in ascending order including the number itself

data structure:
array --> integers

algo:
SET start = 0
for each number in array
  loop do
    start += 1
    puts start
    break if start >= number
  end
end


