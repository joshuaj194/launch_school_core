VALID_CHOICES = ['rock', 'paper', 'scissors']

usr_choice = ''
computer_choice = ''

def win?(first, second)
  (first == "rock" && second == "scissors") ||
    (first == "paper" && second == "rock") ||
    (first == "scissors" && second == "paper")
end

def display_results(usr_choice, computer_choice)
  if win?(usr_choice, computer_choice)
    prompt("You won!")
  elsif win?(computer_choice, usr_choice)
    prompt("Computer won!")
  else
    prompt("It's a tie!")
  end
end

def prompt(message)
  puts "=> #{message}"
end

loop do
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    usr_choice = gets.chomp

    if VALID_CHOICES.include?(usr_choice)
      break
    else
      prompt("Invalid input. Please select a valid choice")
    end
  end

  computer_choice = VALID_CHOICES.sample

  prompt("You chose: #{usr_choice}. Computer chose: #{computer_choice}.")

  display_results(usr_choice, computer_choice)

  prompt("Do you want to try again?")
  again = gets.chomp
  break unless again.start_with?('y')
end

prompt("Thanks for playing RPS!")
