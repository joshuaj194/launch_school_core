=begin
Given an array of strings, return an array containing the characters that are present in all strings in the given array.
=end


=begin
Probem:
 Input: array of strings
 Output: array of individual letters (still in string)

 Implicit Reqs: always return an array, even if empty
 Explicit Reqs: input is all lowercase so return value can also be all lowercase

Examples:
 with 0? 
 with high numbers? 
 with negative numbers? 

Data Structures:
Input: array of strings
 Output: array of individual letters (still in string)
 Returning the same object or new object? new object

Algorithm:
initialize an output array in which we will store the common letters.
finding common letters for each string. 
  words --> letters
  store the letters from the first string in the output array
  compare each string with the output array
    for each string in the input array
      iterate through all the letters in the current output array and check to see if the current string includes the current letter
      if it does, check to see if count of the current letter in the output array matches the count of the current letter in the current string
        if they dont match, delete the current letter from the output array 
          (this deletion should be mutating so that only the letters that match from each comparison are used for the next comparison.)
        if they do, go to the next iteration
 once all strings have been compared, the output array should be returned. 


Code w/ Intent:
=end
require 'pry'

def common_chars(arr)

  output_arr = arr[0].chars
  arr.each do |word|
    output_arr.each do |letter|
      if word.include?(letter)
        if (output_arr.count(letter) > word.count(letter))
          output_arr.delete_at(output_arr.index(letter))
        else
          next
        end
      else
        output_arr.delete(letter)
      end
    end

    # binding.pry
  end

  output_arr
end


p common_chars(["bella","label","roller"]) == ["e","l","l"]
p common_chars(["bella","label","roller"])
p common_chars(["cool","lock","cook"]) == ["c","o"]
p common_chars(["cool","lock","cook"])
p common_chars(["car", "racecar", "rat"]) == ["a","r"]
p common_chars(["car", "racecar", "rat"])
p common_chars(["abc", "def","hij"]) == []
p common_chars(["abc", "def","hij"])