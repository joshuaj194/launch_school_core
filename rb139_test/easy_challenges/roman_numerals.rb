class RomanNumeral

  attr_reader :modern_num

  NUMERALS = {
    "I" => 1,
    "V" => 5,
    "X" => 10,
    "C" => 50,
    "M" => 100,
    "D" => 500,
    "M" => 1000
  }

  def initialize(val)
    @modern_num = val
  end

  def transform_modern
    arr = []
    multiplier = 1
    modern_num.digits.each do |digit|
      arr << digit * multiplier
      multiplier *= 10
    end
    arr
  end

  def to_roman
    str = ""
    transform_modern.reverse_each do |num|
      str += NUMERALS.key(num)
    end
    str
  end

end