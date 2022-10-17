VALID_CHOICES = ['rock', 'paper', 'scissors', 'lizard', 'spock']
VALID_SHORTFORM = ['r', 'p', 'sc', 'l', 'sp']

usr_choice = ''
computer_choice = ''
usr_score = 0
computer_score = 0

def win?(first, second)
  (first.start_with?("r") && second.start_with?("sc")) ||
    (first.start_with?("r") && second.start_with?("l")) ||
    (first.start_with?("p") && second.start_with?("r")) ||
    (first.start_with?("p") && second.start_with?("sp")) ||
    (first.start_with?("sc") && second.start_with?("p")) ||
    (first.start_with?("sc") && second.start_with?("l")) ||
    (first.start_with?("l") && second.start_with?("p")) ||
    (first.start_with?("l") && second.start_with?("sp")) ||
    (first.start_with?("sp") && second.start_with?("sc")) ||
    (first.start_with?("sp") && second.start_with?("r"))
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

def keep_score(usr_choice, computer_choice)
  if win?(usr_choice, computer_choice)
    return "usr"
  elsif win?(computer_choice, usr_choice)
    return "computer"
  else
    return "tie"
  end
end

def grand_winner(usr_score, computer_score)
  if usr_score > computer_score
    prompt("You are the grand winner!")
  else
    prompt("The computer is the grand winner")
  end
end

def prompt(message)
  puts "=> #{message}"
end

loop do 
  loop do
    loop do
      prompt("Choose one: #{VALID_CHOICES.join(', ')} or its shortform - #{VALID_SHORTFORM.join(', ')}")
      usr_choice = gets.chomp

      if VALID_CHOICES.include?(usr_choice) || VALID_SHORTFORM.include?(usr_choice)
        break
      else
        prompt("Invalid input. Please select a valid choice or shortform")
      end
    end

    computer_choice = VALID_CHOICES.sample

    prompt("You chose: #{usr_choice}. Computer chose: #{computer_choice}.")

    display_results(usr_choice, computer_choice)

    if keep_score(usr_choice, computer_choice) == "usr"
      usr_score += 1
    elsif keep_score(usr_choice, computer_choice) == "computer"
      computer_score += 1
    else
      next
    end

    prompt("WINS - You: #{usr_score} - Computer: #{computer_score}")  

    break if (usr_score == 3 || computer_score == 3)
  end

  grand_winner(usr_score, computer_score)
  prompt("Do you want to try again?")
  again = gets.chomp
  usr_score = 0
  computer_score = 0
  break unless again.start_with?('y')

end 

prompt("Thanks for playing RPSLS!")