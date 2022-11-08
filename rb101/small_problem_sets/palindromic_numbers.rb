# Write a method that returns true if its integer argument is palindromic, 
# false otherwise. A palindromic number reads the same forwards and backwards.

def palindromic_number?(num)
  if num == num.digits.join.to_i
    return true 
  else
    return false
  end
end

# examples:

puts palindromic_number?(34543) == true
puts palindromic_number?(123210) == false
puts palindromic_number?(22) == true
puts palindromic_number?(5) == true
puts palindromic_number?(34543)
puts palindromic_number?(123210)
puts palindromic_number?(22)
puts palindromic_number?(5)
