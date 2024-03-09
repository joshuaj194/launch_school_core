class Bar
  attr_reader :xyz
  def initialize
    @xyz = { a: 1, b: 2 }
  end

  def to_s
    'I am a Bar object!'
  end
end

bar = Bar.new
puts bar       # Prints I am a Bar object!
puts bar.xyz   # Prints {:a=>1, :b=>2}