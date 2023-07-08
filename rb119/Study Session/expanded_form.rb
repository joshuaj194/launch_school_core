# You will be given a number and you will need to return it as a string in expanded form. For example:
#
# expanded_form(12); # Should return '10 + 2'
# expanded_form(42); # Should return '40 + 2'
# expanded_form(70304); # Should return '70000 + 300 + 4'
#
# Note: All numbers will be whole numbers greater than 0.

=begin
Probem:
 Input:integer
 Output:string

 Implicit Reqs:
 Explicit Reqs: return a string with the input integer broken down into the values at the ones, tenths, hundredths, thousands, ten-thousands ... places. 

Examples:
 with 0? 
 with high numbers? 
 with negative numbers? 

Data Structures:
 Input: integer
 Output: string
 Returning the same object or new object? new object

Algorithm:

turn the input integer into an array that we can iterate through
  use integer.digits to return an array of digits ordered in ascending place order
use map to iterate through the above array
  assign a place variable to 1 
  multiply the current value by the place 
  multiply place by 10
  repeat until all items have been iterated through

Use select to return a new array with only non-zero numbers
turn them into strings
join the elements in the array using `+` as the separator

Code w/ Intent:
=end

require 'pry'

def expanded_form(int)
  arr = int.digits

  place = 1
  expanded = arr.map do |num|
    num *= place
    place *= 10
    num
  end

  non_zero = expanded.select do |val|
    val > 0
  end

  strings = non_zero.map do |val|
    val.to_s
  end

  strings.reverse.join(' + ')
end

p expanded_form(12) == '10 + 2'
p expanded_form(12)
p expanded_form(42) == '40 + 2'
p expanded_form(42)
p expanded_form(70304) == '70000 + 300 + 4'
p expanded_form(70304)