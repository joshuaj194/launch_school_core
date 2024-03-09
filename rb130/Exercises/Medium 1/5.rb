# Given this code:

items = ['apples', 'corn', 'cabbage', 'wheat']

def gather(items)
  puts "Let's start gathering food."
  yield(items)
  puts "We've finished gathering!"
end

# Fill out the following method calls for gather so that they produce the corresponding output shown in numbers 1-4 listed below:

gather(items) do |fruit, *veggies, wheat |
  puts "#{fruit}"
  puts "#{veggies.join(", ")}"
  puts "#{wheat}"
end