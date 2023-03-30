# RB Advanced PEDAC

=begin
Common Mistakes
- Not enough time spent parsing the problem
- Fuzzy algorithm
- Lack of flexibility
- Lack of syntax fluency
=end

# Given an array of n positive integers and a positive integer, find the minimal length of a contiguous subarray for which the sum >= integer.

# p minSubLength([2, 3, 1, 2, 4, 3], 7) == 2
# p minSubLength([1, 10, 5, 2, 7], 9) == 1
# p minSubLength([1, 11, 100, 1, 0, 200, 3, 2, 1, 250], 280) == 4
# p minSubLength([1, 2, 4], 8) == 0

=begin STEVE

Problem:
Input: array of integers
Output: integer
Rules:
  numbers in sub array must appear consecutively in array
  sum of numbers must be greater than or equal to given positive integer
  if sum of all integers in array is not larger than target return 0

Examples:
# ([2, 3, 1, 2, 4, 3], 7) == 2
# ([1, 10, 5, 2, 7], 9) == 1
# ([1, 11, 100, 1, 0, 200, 3, 2, 1, 250], 280) == 4
# ([1, 2, 4], 8) == 0

# Data:
Integers, arrays

# Algorithm:
define `minSubLength` method with two paramter `array` and `target`
  return `0` if `array`` sum is less than `target`
  initialize `subarrays` array to contain valid subarrays
  create all subarrays
    return subarray to `subarrays` if subarray sum is greater than or equal to `target`
  sort subarrays by size of sub array # step isn't needed if returning min
  return size of min subarray
  end

# Code:

def minSubLength(array, target)
  return 0 if array.sum < target
  subarrays = []
  (0...array.length).each do |index|
    (1..(array.length - index)).each do |length|
      subarrays << array[index, length] unless array[index, length].sum < target
    end
  end

  subarrays.min_by {|arr| arr.size}.size

end

p minSubLength([2, 3, 1, 2, 4, 3], 7) == 2
p minSubLength([1, 10, 5, 2, 7], 9) == 1
p minSubLength([1, 11, 100, 1, 0, 200, 3, 2, 1, 250], 280) == 4
p minSubLength([1, 2, 4], 8) == 0

=end






=begin BENJAMIN
# Given an array of n positive integers and a positive integer, find the minimal length of a contiguous subarray for which the sum >= integer.

# p minSubLength([2, 3, 1, 2, 4, 3], 7) == 2
# p minSubLength([1, 10, 5, 2, 7], 9) == 1
# p minSubLength([1, 11, 100, 1, 0, 200, 3, 2, 1, 250], 280) == 4
# p minSubLength([1, 2, 4], 8) == 0
PROBLEM

input: an array of integers, and a "target" integer (length)
output: an integer (representing the min length)

explicit rules:  return the min length of consec integers whose sum is greater than or equal to the given integer
implicit rules: 
  if an integer is >= the "target", the return value is 1
  if there is no such consec subset, return 0

Questions: ok

Mental Model:
get substrings OR
 
start summing from the beginning, each time I reach the target, store that index in a mins array, 
after reaching the sum, remove the first element, start again from the beginning, 
return the min from the mins array at the end


EXAMPLES
as expected

DATA / ALGORITHM

if all the values don't sum >= target,
  return 0
end

init mins array
for each value with index in the array  
  slice the array from index to the end, and from this sliced array
  sum = first element
  increment sum with the next value
    check the sum, 
      if the sum >= target
        put the index in the mins array
        move to next iteration
      if the sum isn't bigger, 
        keep going (add next value)
  return mins.min
=end







=begin SUZY

[problem]

# Given an array of n positive integers and a positive integer, find the minimal length of a contiguous subarray for which the sum >= integer.

input: array of integers, one integer. 
output: integer. length of continuous numbers where >= secondarguemnt. 
expl. : all integers, array and 2nd arguemnt will be positive 
impl. : if all the numbers in th earray are < then return 0 

find the smallest consecutive numbers in the array that is >= 2nd_argument 

[example]
# p minSubLength([2, 3, 1, 2, 4, 3], 7) == 2
# p minSubLength([1, 10, 5, 2, 7], 9) == 1
# p minSubLength([1, 11, 100, 1, 0, 200, 3, 2, 1, 250], 280) == 4
# p minSubLength([1, 2, 4], 8) == 0

[Data] 

array

[algo] 
- check if any number is > than 2nd argument. if so return 1 
- check if all number (sum) is < 2nd_argument. if so, return 0 
  else
iterate though the array, using each_cons(n) 
where n keeps increasing from 2 to array.size.  

break and return n if sum of any of the consecutive numbers >= 2nd arg. 
-
-loop through 2- array's size using each_cons so that it creates array of arrays of consecutive numbers 
- push the sum of the consecutives into an empty array. and if sum > than intege, then should return the 'n' value. 

CODE: 

def minSubLength(array, integer)
  return 1 if array.select{|num| num >= integer }.size >= 1
  return 0 if array.sum < integer

  2.upto(array.size) do |x|
    sums = []
    array.each_cons(x) {| array| sums << array.sum}
    return x if sums.any? { |number| number >= integer} 
  end


  https://ruby-doc.org/core-3.1.1/Enumerable.html#method-i-each_cons
=end






=begin JOSH
problem:
Define a method that takes two arguments - an array and an integer - 
finds the smallest sub-array of integers within argument1 that when combined are 
greater than or equal to argument2. Then return the length of that sub-array. 

input: array, integer
output: integer

explicit reqs: 
- continuous
- sum of integers in sub_array must be greater than or equal to argument2
- must be the smallest sub-array possible
implicit reqs: 
- if there is no subarray whose sum is greater than or equal to arg2, return the length
of the empty return array. 

examples:
# p minSubLength([2, 3, 1, 2, 4, 3], 7) == 2
smallest sub-array = [4,3] and length of that sub-arr is 2. 
# p minSubLength([1, 10, 5, 2, 7], 9) == 1
[10] and length is 1
# p minSubLength([1, 11, 100, 1, 0, 200, 3, 2, 1, 250], 280) == 4
[100, 1, 0, 200] and length is 4
# p minSubLength([1, 2, 4], 8) == 0
[] and length is 0.



data-structures:
input: array, integer
output: integer

algorithms

SET min = argument2
Break down the array into subarrays
- SET compare = 0
- IF arg1[compare] >= min
      
      new_arr << arg1[compare]
      break
    ELSE
     new_arr << arg1[compare]
     if new_arr.sum >= min
      break
     else 
      compare += 1
     end
    end

END
- 
      
Compare subarrays and return the smallest sub-array
Return the length of the smallest sub-array















=end






=begin
Consider the word "abode". We can see that the letter a is in position 1 and b is in position 2. In the alphabet, a and b are also in positions 1 and 2. Notice also that d and e in abode occupy the positions they would occupy in the alphabet, which are positions 4 and 5.

Given an array of words, return an array of the number of letters that occupy their positions in the alphabet for each word. For example,

p symm(["abode","ABc","xyzD"]) == [4, 3, 1]
p symm(["abide","ABc","xyz"]) == [4, 3, 0]
p symm(["IAMDEFANDJKL","thedefgh","xyzDEFghijabc"]) == [6, 5, 7]
p symm(["encode","abc","xyzD","ABmD"]) == [1, 3, 1, 3]
=end


=begin
SUZY

=begin
[PROBLEM]
Consider the word "abode". We can see that the letter a is in position 1 and b is in position 2. In the alphabet, a and b are also in positions 1 and 2. Notice also that d and e in abode occupy the positions they would occupy in the alphabet, which are positions 4 and 5.

Given an array of words, return an array of the number of letters that occupy their positions in the alphabet for each word. 

INPUT: array of strings. 
OUTPUT: [ array] of integers , of the COUNT of the number of letters that are also in the same position as the alphabet. 
EX: 
IMPL: "a" = "A" ; will contain capitalized letters in the original input but will not "register" as different.
    COUNT IS 0 if none of the letters are in the right "position" 


[EXAMPLE]
p symm(["abode","ABc","xyzD"]) == [4, 3, 1]
p symm(["abide","ABc","xyz"]) == [4, 3, 0]
p symm(["IAMDEFANDJKL","thedefgh","xyzDEFghijabc"]) == [6, 5, 7]
p symm(["encode","abc","xyzD","ABmD"]) == [1, 3, 1, 3]

[data] : 
hashes and array 

[ALGO] 
ITERATE THROUGH THE ARRAY AND RETURN THE COUNT OF LETTERS IN EACH ELEMENT THAT ARE IN THE 'CORRECT' POSITION. 
      - create a hash that contains the letters and the numbers of the correct position {"a" => , "b" => 2... }
      - makde sure that each word will be .downcase (map!} before starting the count ["abode","abc","xyzd"]
      - start with each word. "abode" 

=end

=begin STEVE

Problem:
Input: array of strings
output: array of integers
Rules:
  letter counts if it is at the same position in the string as position in the alphabet
  position is case-insensitive

Examples:

(["abode","ABc","xyzD"]) == [4, 3, 1]
(["abide","ABc","xyz"]) == [4, 3, 0]
(["IAMDEFANDJKL","thedefgh","xyzDEFghijabc"]) == [6, 5, 7]
(["encode","abc","xyzD","ABmD"]) == [1, 3, 1, 3]

# Data:
Strings, Arrays, integers

# Algorithm:

define `symm` method with 1 parameter `strings`
  initialize `alphabet` array to letter in the alphabet
  iterate over elements in `strings` array
  initialize `count` variable
    iterate over each letter in string, keeping track of the character and  index
    if the characters index in the alphabet array is the same as the current index, interate count by 1
  return count to map
  return array returned by map
end

# Code:

def symm(strings)
  

  
=end
