# Write a function that will find all the anagrams of a word from a list. You will be given two inputs a word and an array with words. You should return an array of all the anagrams or an empty array if there are none. For example:

=begin
Probem:
 Input: 2 arguments - str, array of strings
 Output: array    

 Implicit Reqs: always return an array even if empty
 Explicit Reqs: return elements from the array argument that have exactly the same letters as the the string argument

Examples:
 with 0? 
 with high numbers? 
 with negative numbers? 

Data Structures:
 Input: str, array
 Output: array
 Returning the same object or new object? 

Algorithm:

initialize an empty array
easiest thing to do would be to sort the letters in the string and compare them

output = []
compare_to = str_arg.split("").sort.join

arr_arg.each do |word|
  output << word if word.split("").sort.join == compare_to
end



Code w/ Intent:
=end

def anagrams(str, arr)
  output = []
  compare_to = str.split("").sort.join

  arr.each do |word|
    output << word if word.split("").sort.join == compare_to
  end
  
  output
end


anagrams('abba', ['aabb', 'abcd', 'bbaa', 'dada']) => ['aabb', 'bbaa']

anagrams('racer', ['crazer', 'carer', 'racar', 'caers', 'racer']) => ['carer', 'racer']

anagrams('laser', ['lazing', 'lazy',  'lacer']) => []