class SumOfMultiples 

  def initialize(*multiples)
    @multiples = multiples
  end

  def to(limit)
    @multiples = [3,5] unless @multiples
    arr = [0]
    count = 1
    @multiples.each do |val|
      unless val * count >= limit
        arr << val * count
        count  += 1
      end
    end 

    arr.reduce(:+)
  end

  def self.to(limit)
    SumOfMultiples.new().to(limit)
  end
end