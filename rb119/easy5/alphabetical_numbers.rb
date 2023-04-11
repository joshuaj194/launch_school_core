# Write a method that takes an Array of Integers between 0 and 19, and returns an Array of those Integers sorted based on the English words for each number:

# zero, one, two, three, four, five, six, seven, eight, nine, ten, eleven, twelve, thirteen, fourteen, fifteen, sixteen, seventeen, eighteen, nineteen

=begin
Probem: 
  Input: array of integers 
  Output: array of integers ordered alphabetically by their strings

  Implicit Reqs: compare one letter at a time; if one of the words runs out of letter before a difference is found, the shorter word goes first alphabetically
  Explicit Reqs: return an array containing integer elements

Examples:
  with 0?
  with high numbers?
  with negative numbers?

Data Structures:
  Input: array of integers
  Output: array of integers
  Returning the same object or new object? not necessarily

Algorithm:

take each element in the array and turn it into text form
With the text form, sort the array of strings
Once sorted, turn the strings back into integers
return sorted integer array


Code w/ Intent: 
=end


# Examples:

NUMBERS_TEXT = {0 => "zero", 1 => "one", 2 => "two", 3 => "three", 4 => "four", 5 => "five", 6 => "six", 7 => "seven", 8 => "eight", 9 => "nine", 10 => "ten", 11 => "eleven", 12 => "twelve", 13 => "thirteen", 14 => "fourteen", 15 => "fifteen", 16 => "sixteen", 17 => "seventeen", 18 => "eighteen", 19 => "nineteen"}

def alphabetic_number_sort(ary)
  str_arr = ary.map {|num| NUMBERS_TEXT[num]}
  sorted = str_arr.sort
  final_arr = sorted.map {|word| NUMBERS_TEXT.key(word)}
end

puts alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]


