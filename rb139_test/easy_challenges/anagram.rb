class Anagram
  attr_reader :word

  def initialize(word)
    @word = word
  end

  def match(other_words)
    matches = []
    other_words.each do |other_word|
      next if @word.downcase == other_word.downcase
      matches << other_word if hashify(@word).eql? hashify(other_word)
    end
    matches
  end

  def hashify(str)
    processed_string = str.downcase.split('')
    hsh = {}
    processed_string.each do |letter|
      hsh[letter] = str.downcase.count(letter)
    end
    hsh
  end
end