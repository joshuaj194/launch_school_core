# Given a string that consists of some words (all lowercased) and an assortment of non-alphabetic characters,
#  write a method that returns that string with all of the non-alphabetic characters replaced by spaces. If one
#   or more non-alphabetic characters occur in a row, you should only have one space in the result (the result should never have consecutive spaces).

=begin
Probem: 
  Input: string
  Output: string

  Implicit Reqs:
  - spaces can exist at the beginning of the output if they are replacing non-alphabetic chars
  - even expected punctuation is replaced by spaces
  Explicit Reqs: 
  - no consecutive spaces in output
  - replace non-alphabetic character with paces. 

Examples:
  with 0?
  with high numbers?
  with negative numbers?

Data Structures:
  Input: str containing alphabetic and non-alphabetic characters
  Output: str containing alphabetic characters and spaces only
  Returning the same object or new object?

Algorithm:
target non-alpabetic characters and replace them with spaces
target consecutive spaces and replace them with a single space

Code w/ Intent: 
=end

ALPHABET = ('a'..'z').to_a + ('A'..'Z').to_a

def replace(phrase)
  phrase.split("").map do |char|
    if ALPHABET.include? char
      char
    else
      " "
    end
  end
end

def cleanup(sentence)
  final_sentence = replace(sentence).join.squeeze

  # output_sentence = sentence_with_spaces.each_with_index do |item, index|
  #   if ALPHABET.include? item
  #     item
  #   elsif item == sentence_with_spaces[(index + 1)]
  #     sentence_with_spaces.delete_at(index)
  #   elsif item == sentence_with_spaces[(index - 1)]
  #     sentence_with_spaces.delete_at(index)
  #   end
  # end

end

# Examples:

puts cleanup("---what's my +*& line?") == ' what s my line '
p cleanup("---what's my +*& line?")