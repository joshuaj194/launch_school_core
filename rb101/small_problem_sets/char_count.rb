# Write a program that will ask a user for an input of a word or multiple words and give
#  back the number of characters. Spaces should not be counted as a character.

puts "Please write a word or multiple words:"
words = gets.chomp
acceptable_chars = words.chars.delete_if {|char| char == " "}
word_count = acceptable_chars.length

puts "There are #{word_count} characters in '#{words}'"