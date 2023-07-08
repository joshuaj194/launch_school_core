# Write a method that takes a string as an argument and returns a new string in which every uppercase letter is replaced by its lowercase version, and every lowercase letter by its uppercase version. All other characters should be unchanged.

# You may not use String#swapcase; write your own version of this method.

=begin
Probem:
 Input:string
 Output:string

 Implicit Reqs:
 Explicit Reqs:swap the case of the letters; leave non-alphas as they are

Examples:
 with 0? 
 with high numbers? 
 with negative numbers? 

Data Structures:
 Input: string
 Output:string
 Returning the same object or new object? new object

Algorithm:

iterate through the letters in the string
  if downcase
    then upcase
  else
    downcase
  end


Code w/ Intent:
=end

def swapcase(str)
  arr = str.chars 
  new_str = arr.map do |letter|
    if letter.downcase == letter
      letter.upcase
    else
      letter.downcase
    end
  end

  new_str.join("")
end

# Example:

puts swapcase('CamelCase') == 'cAMELcASE'
puts swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'

