# Write a method that returns a list of all substrings of a string that are palindromic. That is, each substring must consist of the same sequence of characters forwards as it does backwards. The return value should be arranged in the same sequence as the substrings appear in the string. Duplicate palindromes should be included multiple times.

# You may (and should) use the substrings method you wrote in the previous exercise.

# For the purposes of this exercise, you should consider all characters and pay attention to case; that is, "AbcbA" is a palindrome, but neither "Abcba" nor "Abc-bA" are. In addition, assume that single characters are not palindromes.

=begin
Probem:
 Input:string
 Output:array of palindromic substrings

 Implicit Reqs:
 Explicit Reqs:case matters; return multiples if there are multiples. 

Examples:
 with 0? 
 with high numbers? 
 with negative numbers? 

Data Structures:
 Input: string
 Output: array of palindromic substrings
 Returning the same object or new object? new

Algorithm:

Find all substrings
  1. initialize an empty array
  2. transform string input into another array
  3. iterate throught the array from step 2 and create all possible substrings
    1. creating substrings involves finding the first and the last letters in a range and grabbing that range. 
    2. edge cases:
      1. the length of the longest substring should not be less than the input string
      2. the last iteration should be all substrings starting with the second to last letter. 
Check if any are palindromic
Return array of palindromic substrings

Code w/ Intent:
=end

def substrings(str)

  subs = []
  str_arr = str.split("")

  str_arr.each_with_index do |elem, idx|
    next if idx == str_arr.length - 1
    counter = idx

    loop do 
      counter += 1
      break if counter == str_arr.size
      subs << str_arr[idx..counter]
    end
  end

  subs
end

def palindromes(str)

  subs = substrings(str)

  arr_palindromic_arrs = subs.select do |elem|
    elem == elem.reverse
  end

  arr_palindromic_str = arr_palindromic_arrs.map do |elem|
    elem.join("")
  end

  arr_palindromic_str.flatten
end

# Examples:


p palindromes('abcd') # == []
p palindromes('madam') # == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') # == [ 'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada','adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did','-madam-', 'madam', 'ada', 'oo']
p palindromes('knitting cassettes') # == ['nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt']