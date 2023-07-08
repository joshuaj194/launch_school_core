# Find the longest substring in alphabetical order.
# Example: the longest alphabetical substring in "asdfaaaabbbbcttavvfffffdf" is "aaaabbbbctt".
# The input will only consist of lowercase characters and will be at least one letter long.
# If there are multiple solutions, return the one that appears first.

=begin
Probem:
 Input: string
 Output: longest alphabetical string

 Implicit Reqs:
 Explicit Reqs: if there are multiple strings that qualify as the longest, return the first one that appears. 

Examples:
 with 0? 
 with high numbers? 
 with negative numbers? 

Data Structures:
 Input: string
 Output: string
 Returning the same object or new object? new object

Algorithm:

initialize an empty array that we will use to store alphabetical strings
find all alphabetical strings of length 2 or greater
intialize a variable to track the current longest string and assign it to an empty string
turn the input string into an array that we can iterate through
  iterate through the array 
  if the return value of running the `<=>` between the current element and the next is `1`
    check if there are any letters in the current_longest variable   
      if so, add that string as an element to the store_arr
    otherwise
      set current_longest back to an empty variable
  otherwise
    add the current element to the end of the current_longest variable

Once iterated through and all strings have been added to the array from step 1
sort the array by the length of its elements
reverse the order of the sorted array
return the first element in the array


Code w/ Intent:
=end

def longest(str)
  long_word_store = []
  biggest_str = ""
  longest_length = 0
  arr = str.chars 

  arr.each_with_index do |letter,spot|
    if arr.length == 1
      biggest_str << letter
      long_word_store << biggest_str
      longest_length = biggest_str.length
    elsif ((letter <=> arr[spot - 1]) == 1) && (spot == arr.length - 1) && ((biggest_str.length > 0) && (biggest_str.length >= longest_length))
      biggest_str << letter
      long_word_store << biggest_str
      longest_length = biggest_str.length
      biggest_str = ""
    elsif (letter <=> arr[spot + 1]) == 1
      biggest_str << letter
      if (biggest_str.length > 0) && (biggest_str.length >= longest_length)
        long_word_store << biggest_str
        longest_length = biggest_str.length
        biggest_str = ""
      else
        biggest_str = ""
      end
    else
      biggest_str << letter
    end
  end

  longest_words = long_word_store.select do |val|
    val.length == longest_length
  end

  longest_words[0]

end



p longest('asd') == 'as'
p longest('asd')
p longest('nab') == 'ab'
p longest('nab')
p longest('abcdeapbcdef') ==  'abcde'
p longest('abcdeapbcdef')
p longest('asdfaaaabbbbcttavvfffffdf') == 'aaaabbbbctt'
p longest('asdfaaaabbbbcttavvfffffdf')
p longest('asdfbyfgiklag') == 'fgikl'
p longest('asdfbyfgiklag')
p longest('z') == 'z'
p longest('z')
p longest('zyba') == 'z'
p longest('zyba')