class DNA
  attr_reader :strand

  def initialize(strand)
    @strand = strand
  end

  def hamming_distance(other_strand)
    max_comparison = (strand.length >= other_strand.length ? other_strand.length : strand.length) - 1
    count = 0
    distance = 0
    (0..max_comparison).each do |val|
      distance += 1 unless strand[count] == other_strand[count]
      count += 1
    end
    distance
  end

end

test = DNA.new("AAA")
puts test.hamming_distance("AAA")