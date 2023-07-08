# A pangram is a sentence that contains every single letter of the alphabet at least once. For example, the sentence "The quick brown fox jumps over the lazy dog" is a pangram, because it uses the letters A-Z at least once (case is irrelevant).

# Given a string, detect whether or not it is a pangram. Return True if it is, False if not. Ignore numbers and punctuation.

=begin
Probem:
 Input:string
 Output: boolean true or false depending on if the input string contains all the letters of the alphabet. 

 Implicit Reqs:
 Explicit Reqs:

Examples:
 with 0? 
 with high numbers? 
 with negative numbers? 

Data Structures:
 Input: 
 Output:
 Returning the same object or new object? 

Algorithm:

1. start by initializing a constant that includes all letters of the alphabet. 
2. Turn the string into an array
3. Iterate through all the constants and check to see if the array from step 2 includes each constant


Code w/ Intent:
=end


ALPHABET = ("a".."z").map { |letter| letter }

def pangram(str)

  arr = str.chars

  ALPHABET.each do |letter|
    if !arr.include?(letter)
      return false
    else
      next
    end
  end

  true
end
