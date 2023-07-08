# Write a method that takes a string, and returns a new string in which every character is doubled.

# Examples:

def repeater(str)
  arr = str.chars

  double = arr.map do |letter|
    letter * 2
  end

  double.join("")
end

repeater('Hello') == "HHeelllloo"
repeater("Good job!") == "GGoooodd  jjoobb!!"
repeater('') == ''

