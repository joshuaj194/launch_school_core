=begin
Write another method that returns true if the string passed as an argument 
is a palindrome, false otherwise. This time, however, your method should be 
case-insensitive, and it should ignore all non-alphanumeric characters. If 
you wish, you may simplify things by calling the palindrome? method you 
wrote in the previous exercise.
=end

def real_palindrome?(string)
  string.gsub(/[^0-9a-z]/i, '').downcase == string.gsub(/[^0-9a-z]/i, '').downcase.reverse
end

# examples: 

puts real_palindrome?('madam') == true
puts real_palindrome?('Madam') == true           # (case does not matter)
puts real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
puts real_palindrome?('356653') == true
puts real_palindrome?('356a653') == true
puts real_palindrome?('123ab321') == false
