def prompt(message)
  Kernel.puts("=> #{message}")
end

def integer?(input)
  input.to_i.to_s == input
end

def float?(input)
  input.to_f.to_s == input
end

def number?(input)
  integer?(input) || float?(input)
end

def positive?(input)
  input.to_f > 0
end

prompt('Welcome to the Car/Mortgage monthly payment calculator.')
loop do
  annual_percentage_rate = ''
  loop do
    prompt('What is the Annual Percentage Rate of the loan?')
    annual_percentage_rate = gets.chomp

    if number?(annual_percentage_rate) && positive?(annual_percentage_rate)
      break
    else
      prompt('Invalid APR. Must enter a positive value.')
    end
  end

  principal_loan = ''
  loop do
    prompt('Enter the Principal loan amount:')
    principal_loan = gets.chomp

    if number?(principal_loan) && positive?(principal_loan)
      break
    else
      prompt('Invalid loan amount. Must enter a positive number.')
    end
  end

  loan_duration = ''
  loop do
    prompt('How long is the loan duration in years?')
    loan_duration = gets.chomp

    if number?(loan_duration) && positive?(loan_duration)
      break
    else
      prompt('Invalid loan duration entried.  Must be a positive number.')
    end
  end

  interest_rate_monthly = (annual_percentage_rate.to_f * 0.01) / 12.0
  loan_duration_months = loan_duration.to_f * 12.0

  prompt('Calculating monthly loan payment now...')
  monthly_payment = principal_loan.to_f *(interest_rate_monthly / (1 - ((1 + interest_rate_monthly)**(-loan_duration_months))))
  prompt("Your monthly payment for the loan is #{format('%.2f',
                                                        monthly_payment)}.")

  prompt("Do you want to perform another calculation? (Y to calculate again)")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end
