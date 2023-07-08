# Write a method that takes a string as an argument and returns
# the character that occurs least often in the given string.
# If there are multiple characters with the equal lowest number
# of occurrences, then return the one that appears first in the
# string. When counting characters, consider the uppercase and
# lowercase version to be the same.

=begin
Probem:
 Input:string
 Output:string - single character - that appears the LEAST often

 Implicit Reqs: if there is only one character, return that character; Spaces count as characters too. Always return in lowercase. 
 Explicit Reqs: Return the character that appears lost often in a given string. Count uppercase and lowercase letters the same. 

Examples:
 with 0? 
 with high numbers? 
 with negative numbers? 

Data Structures:
 Input: string
 Output: string
 Returning the same object or new object? new object

Algorithm:

1. Find how many times each character appears in the input string.
  1. Transform the input string into its lowercase version so we don't have to handle that later
    .downcase
  2. Check to see if all characters in the string are the same. If they are return the first character. 
    transform into an array
    use .all? to check if they are all the same
    return the first letter in the array if the statement above evaluates to true. 
  3. Iterate through the string and count the number of times each char appears. 
    Use A hash where the key is the character and value is the number of times it appears
    1. Init an empty hash
    2. Iterate through the string array. 
      1. If the current element in the iteration is already a key in the hash, we will add 1 to its corresponding value.
      2. If it's not, then we will add a key and assign the value to 1. 
      3. Repeat this process until we iterate through the whole array.

2. Find the character in hash from step 2 that appears the least in the input string. 
    1. Turn the hash into an array
    2. Find the lowest value in the hash
    3. Iterate through the array and find all elements where the second element is equal to the lowest count. 
    4. Return the first element in the array. 
3. Return that character. 

edge case: How are empty spaces handled when they are the key in a hash?
Code w/ Intent:
=end

def process_str(str)
  process_arr = str.downcase.split("")

  return true if process_arr.all?(process_arr[0])
  process_arr
end


def least_common_char(str)
  if process_str(str) == true
    return str[0]
  else 
    str_arr = process_str(str)
  end

  char_count = {}
  str_arr.each do |elem|
    if char_count.keys.include?(elem)
      char_count[elem] += 1
    else
      char_count[elem] = 1
    end
  end

  hsh_arr = char_count.to_a 
  lowest_count = char_count.values.sort[0]

  lowest_chars = hsh_arr.select do |elem|
    elem[1] == lowest_count
  end

  lowest_chars[0][0]
end


# Examples:

p least_common_char("Hello World") == "h"
p least_common_char("Peter Piper picked a peck of pickled peppers") == "t"
p least_common_char("Mississippi") == "m"
p least_common_char("Happy birthday!") == ' '
p least_common_char("aaaaaAAAA") == 'a'

# The tests above should print "true".