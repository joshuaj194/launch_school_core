class Series
  attr_reader :arr_val

  def initialize(val)
    @arr_val = val.split("")
  end

  def slices(num)
    raise ArgumentError if num > arr_val.size
    start = 0
    output = []
    while arr_val[start,num].size == num
      output << arr_val[start,num]
      start += 1
    end

    output.map do |arr|
      arr.map do |val|
        val.to_i
      end
    end
  end

end