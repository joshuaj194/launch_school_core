# Write a method named to_weird_case that accepts a string, and
# returns the same sequence of characters with every 2nd character
# in every third word converted to uppercase. Other characters
# should remain the same.

# The tests above should print "true".

=begin
Probem:
 Input: string
 Output: string with every second character in every 3rd word uppercased. 

 Implicit Reqs: always return the string
 Explicit Reqs: uppercase every second char in every third word

Examples:
 with 0? 
 with high numbers? 
 with negative numbers? 

Data Structures:
 Input: string
 Output: String
 Returning the same object or new object? new object

Algorithm:

string
we need to target every 3rd word
  turn the string into an array and we're going to remove the spaces in that Process
initialize a "third words" array
  to target every 3rd word, we're going through the array with the value and its index.
    if (index + 1) divided 3 has no remainder, we know it's a multiple of three. 

      we iterate through the third words Array
        for every element, we iterate through the letters
          for letters at 2, 4, 6, 8. index + 1 divided by 2 leaves no remainder. 
            .uppercase on that letter.


return mutated string



Code w/ Intent:
=end

def capitalize_letters(word)
  letters = word.chars

  new_letters = letters.map.with_index do |letter, idx|
    if idx % 2 == 0
      letter
    else 
      letter.upcase
    end
  end

  new_letters.join
end

# capitalize_letters ('Poppins')

def to_weird_case(str)
  words = str.split(" ")

  new_words = words.map.with_index do |word, idx|
    if (idx + 1) % 3 == 0
      capitalize_letters(word)
    else
      word
    end
  end

  new_words.join(" ")   
end

  # # words.each_with_index do |word, idx|
  # #   if (idx + 1) % 3 == 0
  # #     third_words << word
  # #   end
  # end
  
  # third_words.each do |word|
  #   counter = 0

  #   loop do 
  #     break if counter == word.length
  #     if counter % 2 == 0
  #       next
  #     else
  #       word[counter].upcase!
  #     end
  #     counter += 1
  #   end


  # #   letters = word.chars 

  # #   letters.each_with_index do |letter, idx|
  # #     if (idx + 1) % 2 == 0
  # #       letter.upcase!
  # #     else
  # #       next
  # #     end
  # #   end

  # end

  # third_words
  # # words


p to_weird_case('Lorem Ipsum is simply dummy text of the printing') == 'Lorem Ipsum iS simply dummy tExT of the pRiNtInG'
p to_weird_case('It is a long established fact that a reader will be distracted') == 'It is a long established fAcT that a rEaDeR will be dIsTrAcTeD'
p to_weird_case('aaA bB c') == 'aaA bB c'
p to_weird_case('Miss Mary Poppins word is supercalifragilisticexpialidocious') == 'Miss Mary POpPiNs word is sUpErCaLiFrAgIlIsTiCeXpIaLiDoCiOuS'