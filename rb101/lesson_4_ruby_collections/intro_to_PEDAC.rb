# PROBLEM:

# Given a string, write a method `palindrome_substrings` which returns
# all the substrings from a given string which are palindromes. Consider
# palindrome words case sensitive.

# Test cases:

# palindrome_substrings("supercalifragilisticexpialidocious") == ["ili"]
# palindrome_substrings("abcddcbA") == ["bcddcb", "cddc", "dd"]
# palindrome_substrings("palindrome") == []
# palindrome_substrings("") == []

=begin
Clarifying Questions:
How do you want the output returned? 



input: string
output: array
requirements:
  explicit:
    return a list of substrings so return an array in this case
    palindromes are case sensitive

  implicit: 
    return an empty array when the input is an empty string
    return an empty array when the input string doesn't contain a palindrome
=end
