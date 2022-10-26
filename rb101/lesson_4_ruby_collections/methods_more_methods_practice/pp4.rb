['ant', 'bear', 'cat'].each_with_object({}) do |value, hash|
  hash[value[0]] = value
end

# What is the return value of each_with_object in the following code? Why?

=begin
`each_with_object` is an enumerable method. Intuitively, the return should be
{'ant' => 'ant', 'bear' => 'bear', 'cat' => 'cat'}. Based on the docs, this
should be right. The only worry I have here is that I might be understanding
value[0] incorrectly. I'm understanding value as the whole caller array so 
value[0] would be 'ant' so hash['ant'] = value would be 'ant' => ['ant', bear, 'cat']
but that can't be right so `value` must be each element in the caller so 
value[0] will be 'ant'[0], 'bear'[0], 'cat'[0]. So the return for the method
will be:

{'a' => 'ant', 'b' => 'bear', 'c' => 'cat'}

=end
