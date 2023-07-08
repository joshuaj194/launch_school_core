=begin

Find the length of the longest substring in the given string that is the same in reverse

As an example, if the input was "I like racecars that go fast", the substring (racecar) length would be 7.

If the length of the input string is 0, the retrun value must be 0.

Example:

"a" -> 1
"aab" -> 2
"abcde" -> 1
"zzbaabcd" -> 4
"" -> 0

=end

=begin
Probem:
 Input:string, that can be empty. 
 Output:integer reflecting the length of the longest palindrome that is a substring in the input string. 

 Implicit Reqs: there is no minimum lenght for a substring. So something even a single letter is considered a substring by itself is considered a palindrome in this case. 
 Explicit Reqs: return 0 if the input string is empty. Return lenght of the longest palindromic substring.  

Examples:
 with 0? 
 with high numbers? 
 with negative numbers? 

Data Structures:
 Input: string that contains alphanumeric characters
 Output: integer
 Returning the same object or new object? new object

Algorithm:

1. Find palindromic substrings
  1. Initialize an array and assign it to a palindromes variable. 
  2. Any string that is the same when reversed. If we call the .reverse method on a given substring, it should be equal to the substring.

    1. Iterate through the string
      1. The current character in the iteration is the first possible character in the substring. We'll call this a potential substring. 
        2. We add the character that follows the current iteration character to the "potential substring" and we check to see if the potential substring is equal to itself when reversed. 
          1. if it is, we add it to an array of potential substrings. 
          1. either way, we repeat step 2
          1. This continues until all characters have been added to the potential substring. 
      2. Then the "starting character" goes to the next loop and we repeat step 2. 
      3. We repeat this process until the last character in the string is the "starting character".
      4. This should give us a array of all possible palindromes in the input string. 


2. Of the palindormic substrings, find the longest one
  1. Assuming we have an array of palindromic substrings from step 1, we can sort the array by the length of the elements and return the longest one that way. 
3. Return the lenght of the longest palindromic substring 
  1. We can run the `.length` method to return the lenght of the longest palindromic element. 



Code w/ Intent:
=end

require 'pry'

def find_palindromes(str)
  palindromes = []

  if (str.length == 2) && (str == str.reverse)
    palindromes << str
    return palindromes
  end

  str_chars = str.chars 

  str_chars.each_with_index do |letter, idx|
    counter = idx

    loop do 
      counter += 1
      break if counter >= str_chars.size
      possible_palindrome = str_chars[idx..counter]
      # binding.pry
      if possible_palindrome == possible_palindrome.reverse
        palindromes << possible_palindrome
      else
        next
      end
    end
  end

  palindromes
  
end

def longest_palindrome(str)
  if str.length == 0
    0
  elsif str.length == 1
    1
  else
    sorted = find_palindromes(str).sort_by { |elem| elem.length }
    # binding.pry
    sorted[-1].length
  end
end

p longest_palindrome("a") == 1
p longest_palindrome("aa") == 2
p longest_palindrome("baa") == 2
p longest_palindrome("aab") == 2
p longest_palindrome("baabcd") == 4
p longest_palindrome("baablkj12345432133d") == 9

