# Create a simple tip calculator. The program should prompt for a bill amount 
# and a tip rate. The program must compute the tip and then display both the 
# tip and the total amount of the bill.

=begin
example:
What is the bill? 200
What is the tip percentage? 15

The tip is $30.0
The total is $230.0
=end

puts "What did your bill come out to?"
bill = gets.chomp.to_f

puts "How much would you like to tip?"
tip_percent = gets.chomp.to_f/100

tip = bill * tip_percent
tip = tip.ceil(1)
total = bill + tip
total = total.ceil(1)

puts "The tip is $#{tip}"
puts "The total is $#{total}"