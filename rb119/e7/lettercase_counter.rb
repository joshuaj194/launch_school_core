# Write a method that takes a string, and then returns a hash that contains 3 entries: one represents the number of characters in the string that are lowercase letters, one the number of characters that are uppercase letters, and one the number of characters that are neither.

=begin
Probem:
 Input:string
 Output:hash

 Implicit Reqs: always return a hash even if the values are all 0
 Explicit Reqs:spaces and non-alphabetical characters are considered "neither"

Examples:
 with 0? 
 with high numbers? 
 with negative numbers? 

Data Structures:
 Input: string  
 Output: hash
 Returning the same object or new object? 

Algorithm:

output = { lowercase => 0, uppercase => 0, neither => 0}

1. turn the string into an array and move any characters that are not an alphabet into a separate array. 
2. count non-alpha array length to find the value of "neither"
3. In the remaining string, check each value to see if it's low or upp and update the appropriate hash key-val pair based on the findings. 
  How to verify downcase v. upcase? 


Code w/ Intent:
=end


# examples:

def letter_case_count(str)
  output = { lowercase: 0, uppercase: 0, neither: 0}

  letters = str.delete('^/a-zA-Z/')
  non_letters = str.delete('/a-zA-Z/')

  output[:neither] += non_letters.length
  letters.split("").each do |val|
    if val.upcase == val
      output[:uppercase] += 1
    else
      output[:lowercase] += 1
    end
  end

  output
end

puts letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
puts letter_case_count('abCdef 123')
puts letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
puts letter_case_count('AbCd +Ef')
puts letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
puts letter_case_count('123')
puts letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }
puts letter_case_count('')