def multiply(numbers, by)
  multiply_product = []
  counter = 0

  loop do
    break if counter == numbers.length
    
    current_number = numbers[counter]
    multiply_product << current_number * by

    counter += 1
  end

  multiply_product
end

my_numbers = [1, 4, 3, 7, 2, 6]
puts multiply(my_numbers, 3) # => [3, 12, 9, 21, 6, 18]