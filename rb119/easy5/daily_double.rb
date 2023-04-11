# Write a method that takes a string argument and returns a new string that contains the value of the original string with all consecutive duplicate characters collapsed into a single character.
#  You may not use String#squeeze or String#squeeze!.

=begin
Probem:
 Input: string
 Output: string with duplicates removed

 Implicit Reqs: return an empty string by default; string contains alphanumeric characters; consecutive = >1 in a row
 Explicit Reqs: take consecutive duplicate characters and reduce them to a single character   

Examples:
 with 0? 
 with high numbers? 
 with negative numbers? 

Data Structures:
 Input: string
 Output: string
 Returning the same object or new object? no

Algorithm:

take str argument
sort/compare letters
cannot easily sort/compare letters in a string so turn the str into an array first
compare each element in the array to the next, 
find the stretch of duplicates
  start at 0
  compare 1 to 0, if the same, go to the next one, repeat
  if not the same, set start to current_index
reduce that stretch to one
add that one letter to the final_str
--> the problem this raises is that deleting an element messes with the iteration since elements could be skipped
repeat until there are no duplicates
return clean string
end

overcomplicated this one ^ and ended up looking at the launch school answer which is much simpler in hindsight
Code w/ Intent:
=end

def crunch(text)
  index = 0
  crunch_text = ''
  while index <= text.length - 1
    crunch_text << text[index] unless text[index] == text[index + 1]
    index += 1
  end
  crunch_text
end
# Examples:

puts crunch('ddaaiillyy ddoouubbllee') == 'daily double'
puts crunch('4444abcabccba') == '4abcabcba'
puts crunch('ggggggggggggggg') == 'g'
puts crunch('a') == 'a'
puts crunch('') == ''