=begin
Write a method that returns true if the string passed as an argument 
is a palindrome, false otherwise. A palindrome reads the same forward and 
backward. For this exercise, case matters as does punctuation and spaces.

input: string
output: boolean
requirements: 
  explicit:
  - case matters
  - spaces matter
  - punctuations matter

DS:
in: string
out: boolean

Algo:

=end 

def palindrome?(str_in)
  if str_in == str_in.reverse 
    true 
  else 
    false
  end
end

# Examples:

puts palindrome?('madam') == true
puts palindrome?('Madam') == false          # (case matters)
puts palindrome?("madam i'm adam") == false # (all characters matter)
puts palindrome?('356653') == true