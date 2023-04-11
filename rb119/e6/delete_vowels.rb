# Write a method that takes an array of strings, and returns an array of the same string values, except with the vowels (a, e, i, o, u) removed.

=begin
Probem:
 Input:array of strings
 Output:array of strings - vowels

 Implicit Reqs:always return the same number of elements even if that means including a blank string
 Explicit Reqs:remove vowels regardless of case

Examples:
 with 0? 
 with high numbers? 
 with negative numbers? 

Data Structures:
 Input: array
 Output:array
 Returning the same object or new object? new object

Algorithm:

check each element(string) in the array for vowels
remove those vowels
add vowelless elements to new array
return new array

Code w/ Intent:
=end

def remove_vowels(arr)
  arr.map do |elem|
    elem.delete("AEIOUaeiou")
  end 
end

# examples:

puts remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
puts remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
puts remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']