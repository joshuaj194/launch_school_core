def prompt(message)
  puts "==> #{message}"
end

inputs = []

prompt("Enter the 1st number:")
inputs << gets.chomp.to_i

prompt("Enter the 2nd number:")
inputs << gets.chomp.to_i

prompt("Enter the 3rd number:")
inputs << gets.chomp.to_i

prompt("Enter the 4th number:")
inputs << gets.chomp.to_i

prompt("Enter the 5th number:")
inputs << gets.chomp.to_i

prompt("Enter the last number:")
last_num = gets.chomp.to_i

if inputs.include?(last_num)
  prompt("The number #{last_num} appears in #{inputs}")
else
  prompt("The number #{last_num} does not appear in #{inputs}")
end

