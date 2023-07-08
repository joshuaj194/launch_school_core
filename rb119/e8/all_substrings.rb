# Write a method that returns a list of all substrings of a string. The returned list should be ordered by where in the string the substring begins. This means that all substrings that start at position 0 should come first, then all substrings that start at position 1, and so on. Since multiple substrings will occur at each position, the substrings at a given position should be returned in order from shortest to longest.

# You may (and should) use the leading_substrings method you wrote in the previous exercise:

# Examples:

def leading_substrings(str, start=0)
  arr = []
  counter = 1

  until arr.last == str[start..-1]
    arr << str[start, counter]
    counter += 1
  end

  arr
end

def substrings(str)
  out_arr = []
  str_arr = str.chars

  str_arr.each_with_index do |char, spot|
    out_arr << leading_substrings(str, spot)
    # puts out_arr
  end

  out_arr.flatten
end


p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]

# p substrings('abcde')