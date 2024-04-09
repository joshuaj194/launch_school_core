def RomanNumeral

  ROMAN_NUMERALS = {
    "M" => 1000,
    "CM" => 900,
    "D" => 500,
    "CD" => 400,
    "C" => 100,
    "XC" => 90,
    "L" => 50,
    "XL" => 40,
    "X" => 10,
    "IX" => 9,
    "V" => 5,
    "IV" => 4,
    "I" => 1
  }
  
  def initialize(digit)
    @modern_numeral = digit
  end

  def to_roman
    roman = ''
    arr = self.process

  end

  def process
    arr = []
    start = 1
    @modern_numeral.digits.each do |digit|
      arr << digit * start
      start *= 10
    end
    arr
end