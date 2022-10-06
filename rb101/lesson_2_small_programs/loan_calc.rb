=begin
1. Identify the input and output
Inputs
  loan amount
  APR
  Loan duration

output = monthly payment
2. Make the requirements explicit
Identify Monthly interest rate
Identify loan duration in months

3. Identify the Rules
payment formula
m = p * (j / (1 - (1 + j)**(-n)))
m = monthly payment
p = loan amount
j = monthly interest rate
n = loan duration in months


4. Create a mental model of the problem
I get inputs from the user; convert the inputs to the right format;
use the formula; print the output


Examples/Test cases
integers and floats for both loan amount and APR
Easy numbers like 100000 or 3.00%
Tough numbers like 123564.12 or 2.375%


Data Structures
We're going to receive the input as a string from the user and all three
need to be transformed into integers. 
loan amount -- string to integer or float
APR -- string to float
Loan Duration -- string to integer since loans durations are usually in 
whole numbers of years - 10, 15, 30 or in the case of cars 4,5,6,7,8

Output should be a float


Algorithm

1. Welcome the user and ask for their name
START
PUTS ${welcome_msg}
SET name = ''

  LOOP DO
    SET name = gets.chomp

    IF name.empty?
      PUTS ${valid_name_err}
    ELSE
      BREAK
    END
  END
END

2. Greet them with their name
START
  PUTS "welcome to the Loan Calculator #{name}"
END

3. Ask for and Obtain the inputs
  For each: 
   validate
   convert to the appropriate data type and unit
   store
START
  PUTS "What is your loan amount? please omit the `$`"
  SET loan_amt = 0

  Loop do
    SET loan_amt = gets.chomp
   
    IF Float(usr_loan_amt)
      SET loan_amt = usr_loan_amt.to_f
      break
    ELSE
      puts "Please enter a valid number without including a `$`"
    end
  end 
END

START
  PUTS "What is your annual percentage rate(APR)? Exclude the `%`"
  SET apr = 0

  Loop do
    apr = gets.chomp

    IF Float(apr)
      apr = apr.to_f
      break
    ELSE
      PUTS "Please enter a valid rate without including the `%`"
    end
  end

  SET monthly_rate = apr / 12
END

START
  PUTS "How many years do you have on your loan?"
  term = 0

  Loop do
    term = gets.chomp
    IF Integer(term)
      term = term.to_i
      break
    ELSE
      puts "enter a valid number of years"
    end
  end 

  term_months = term * 12
END

4. Use the provided formula
START
  SET pay_per_month = loan_amt * ((monthly_rate/100) / (1 - (1 + (monthly_rate/100))**(-1 * term_months)))
END
5. Print the output
START
  PUTS "Your monthly payment for a loan amount of #{loan_amt} at an APR of #{apr}
  over #{term} is #{pay_per_month}"
END

6. Ask if the user wants to calculate a different loan
START
  Loop do
    Steps 3 - 5
  end 

  Puts "Would you like to calculate another loan? Enter 'y' if you would"
  again = gets.chomp

  Break UNLESS again.downcase.start_with?('y')

END

Code with intent 
=end

require 'yaml'
MSG = YAML.load(File.read("loan_calc_msgs.yml"))

def prompt(msg)
  puts "=> #{msg}"
end 

prompt(MSG['welcome_msg'])
name = ''

loop do 
  name = gets.chomp
  
  if name.empty?
    prompt(MSG['valid_name_err'])
  else
    break
  end
end 

prompt("welcome to the MONTHLY DEBT CALCULATOR, #{name}!")

  loop do
  prompt(MSG['loan_amt_msg'])
  loan_amt = 0

  loop do
    loan_amt = gets.chomp
    
    if Float(loan_amt)
      loan_amt = loan_amt.to_f
      break
    else
      prompt(MSG['loan_amt_err'])
    end

  end 

  prompt(MSG['apr_msg']) 
  apr = 0

  loop do
  apr = gets.chomp

    if Float(apr)
      apr = apr.to_f
      break
    else
      prompt(MSG['apr_msg_err'])
    end

  end

  monthly_rate = apr / 12

  prompt(MSG['term_msg']) 
  term = 0

  loop do
    term = gets.chomp

    if Integer(term)
      term = term.to_i
      break
    else
      prompt(MSG['term_msg_err'])
    end

  end 

  term_months = term * 12

  prompt("Calculating monthly payment for a loan amount of $#{loan_amt} at an APR of #{apr}% over #{term} years...")

  pay_per_month = loan_amt * ((monthly_rate/100) / (1 - (1 + (monthly_rate/100))**(-1 * term_months)))

  prompt("Your monthly payment for a loan amount of $#{loan_amt} at an APR of #{apr}% over #{term} years is $#{pay_per_month}")

  prompt(MSG['again']) 
  again = gets.chomp
  break unless again.downcase.start_with?('y')
end

prompt(MSG['thanks'])