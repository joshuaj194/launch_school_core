# Have the method letter_changes(str) take the str parameter being passed and
# modify it using the following algorithm. Replace every letter in the string
# with the 3rd letter following it in the alphabet (ie. c becomes f, Z becomes C).
# Then return this modified string.

=begin
Probem:
 Input: string with alphanumeric chars + some symbols
 Output: string with alphanumeric chars + some symbols

 Implicit Reqs: non-alphabetical chars stay the same
 Explicit Reqs: alphabets get moved 3 letters down

Examples:
 with 0? 
 with high numbers? 
 with negative numbers? 

Data Structures:
 Input: string which alphanumeric chars + some symbols
 Output: string which alphanumeric chars + some symbols
 Returning the same object or new object? same object. new object

Algorithm:

iterate through every character in the string
  string --> array
use `select` to return a new array with modified characters

  ignore if non-alphabetical character
  if alphabetical character
    re-assign the value to the letter that is three down
  end

return new string

string 
access every alphabet
  str --> arr
  Iterate through the string
    if it's a letter
      move each of those "up by 3" (method that mutates)
        I could initialize a constant which is a hash with each letter and their number. 
        for each letter, find it's associated number and replace with letter which has (number + 3)
    if not 
      leave it as is 
    end 
    arr.join --> string 
return the same string with the modified value


Code w/ Intent:
=end
require 'pry'

ALPHABET = ('A'..'Z').to_a

def letter_changes(str)
  arr = []

  str.each_char do |val|
    if ALPHABET.include?(val)
      new_index = (ALPHABET.index(val)) + 3
      if new_index > 25
        new_index = new_index - 26
      end

      val = ALPHABET.at(new_index)
    elsif ALPHABET.include?(val.upcase)
      new_index = (ALPHABET.index(val.upcase)) + 3
      if new_index > 25
        new_index = new_index - 26
      end

      val = ALPHABET.at(new_index).downcase
    else
      val
    end
    arr << val
  end

  arr.join
end

# binding.pry

p letter_changes("this long cake@&") == "wklv orqj fdnh@&"
p letter_changes("this long cake@&")
p letter_changes("Road trip9") == "Urdg wuls9"
p letter_changes("Road trip9")
p letter_changes("EMAILZ@gmail.com") == "HPDLOC@jpdlo.frp"
p letter_changes("EMAILZ@gmail.com")
p letter_changes('xyz') == ('abc')
p letter_changes('xyz')


=begin
Probem:
 Input:
 Output:

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



Code w/ Intent:
=end
