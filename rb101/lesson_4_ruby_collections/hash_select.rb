produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

# Let's now take a look at an example with hashes. In this example we want 
# to select the key-value pairs where the value is 'Fruit'.

def select_fruit(collection)
  fruits = {}
  arr_keys = collection.keys
  counter = 0
  
  loop do
    if collection[arr_keys[counter]] == 'Fruit'
      fruits.store(arr_keys[counter], collection[arr_keys[counter]])
    end
    counter += 1
    break if counter == arr_keys.length
  end

puts fruits
end



select_fruit(produce) # => {"apple"=>"Fruit", "pear"=>"Fruit"}
puts produce



