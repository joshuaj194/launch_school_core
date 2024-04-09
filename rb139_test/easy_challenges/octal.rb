class Octal
  def initialize(str)
    @octal = str
  end

  def valid?
    !@octal.match(/[8-9a-z]+/)
  end

  def to_decimal
    return 0 unless valid?
    arr = []
    count = 0
    @octal.to_i.digits.each do |val|
      arr << (val * (8**count))
      count += 1
    end
    arr.reduce(:+)
  end

end
