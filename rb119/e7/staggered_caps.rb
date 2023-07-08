# Write a method that takes a String as an argument, and returns a new String that contains the original value using a staggered capitalization scheme in which every other character is capitalized, and the remaining characters are lowercase. Characters that are not letters should not be changed, but count as characters when switching between upper and lowercase.

# examples

=begin
Probem:
 Input:string
 Output:new string

 Implicit Reqs:first letter should be capitalized; doesn't start with a blank character
 Explicit Reqs: alternate characters between upper and lower case. Spaces and integers count as character but do not need to be changed. 

Examples:
 with 0? 
 with high numbers? 
 with negative numbers? 

Data Structures:
 Input: string
 Output: string
 Returning the same object or new object? new object

Algorithm:

string --> array --> string

initialize a variable, out_arr, and assign it to (Take the input string and turn it into an array)
Iterate through the out_arr array
  if it's not a letter, go to the next interation
    at index 0 or even indices, call upcase on the character.
    at odd indexes, call downcase on the character
  end


Code w/ Intent:
=end

def staggered_case(str)
  out_arr = str.chars 
  out_arr.each_with_index do |val, spot|
    if val =~ /^A-Za-z/
      next
    elsif spot % 2 == 0
      val.upcase!
    else
      val.downcase!
    end
  end

  out_arr.join
end


puts staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
puts staggered_case('I Love Launch School!')
puts staggered_case('ALL_CAPS') == 'AlL_CaPs'
puts staggered_case('ALL_CAPS')
puts staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'
puts staggered_case('ignore 77 the 444 numbers')