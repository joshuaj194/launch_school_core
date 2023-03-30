# Starting with the string:

famous_words = "seven years ago..."

# show two different ways to put the expected "Four score and " in front of it.

str2 = "Four score and "

# famous_words = str2 + famous_words
famous_words.prepend(str2)
puts famous_words