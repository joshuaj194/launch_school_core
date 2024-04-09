require 'pry'

class Scrabble
  POINTS = {
    1 => ["A", "E", "I", "O", "U", "L", "N", "R", "S", "T"],
    2 => ["D", "G"],
    3 => ["B", "C", "M", "P"],
    4 => ["F", "H", "V", "W", "Y"],
    5 => ["K"],
    8 => ["J", "X"],
    10 => ["Q", "Z"]
  }

  def initialize(input)
    @word = input
  end

  def score
    total = 0
    return total if @word.nil? || !@word.match(/[a-zA-Z]+/)
    @word.split("").each do |letter|
      POINTS.each do |k,v|
        total += k if v.include?(letter.upcase)
      end
    end
    total
  end

  def self.score(word)
    Scrabble.new(word).score
  end
end