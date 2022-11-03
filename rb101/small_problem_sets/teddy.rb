# Build a program that randomly generates and prints Teddy's age. To get the 
# age, you should generate a random number between 20 and 200.

# Example Output

# Teddy is 69 years old!

def age(name, range = 20..200)
  age = Random.rand(range)

puts "#{name} is #{age} years old!"
end

age ("Teddy")