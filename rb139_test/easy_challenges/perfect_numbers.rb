class PerfectNumber
  def self.classify(num)
    if aliquot(num) > num
      "abundant"
    elsif aliquot(num) < num
      "deficient"
    elsif aliquot(num) == num
      "perfect"
    end
  end

  def self.aliquot(num)
    divisors = []
    (1..num-1).each do |val|
      divisors << val if num%val == 0
    end
    divisors.reduce(:+)
  end

end