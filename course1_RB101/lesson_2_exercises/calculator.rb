def prompt(message)
  Kernel.puts("=> #{message}")
end

def integer?(input)
  input.to_i.to_s == input
end

def float?(input)
  input.to_f.to_s == input
end

def operation_to_message(op)
  worded_operation =  case op
                      when '1'
                        'Adding'
                      when '2'
                        'Subtracting'
                      when '3'
                        'Multiplying'
                      when '4'
                        'Dividing'
                      end
  not_returned = "Random string not returned."
  worded_operation
end

prompt("Welcome to Calculator! Enter your name:")

name = ''
loop do
  name = Kernel.gets().chomp()

  if name.empty?()
    prompt("Make sure to enter a valid name!")
  else
    break
  end
end

prompt("Hi #{name}!")

loop do  #main loop
  number1 = ""
  loop do
    prompt("What is the first number?")
    number1 = Kernel.gets().chomp()

    if integer?(number1) || float?(number1)
      break
    else
      prompt("Hmm.. that doesn't look like a valid number")
    end
  end

  number2 = ""
  loop do
    prompt("What is the second number?")
    number2 = Kernel.gets().chomp()

    if integer?(number2) || float?(number2)
      break
    else
      prompt("Hmm.. that doesn't look like a valid number")
    end
  end

  operator_prompt = <<-MSG
    What operation would you like to perform
    1) add
    2) subtract
    3) multiply
    4) divide
  MSG

  prompt(operator_prompt)

  operator = ''
  loop do
    operator = Kernel.gets().chomp()

    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt("Must choose 1, 2, 3, or 4!")
    end
  end

  prompt("#{operation_to_message(operator)} the two numbers...")

  result = case operator
          when '1'
            number1.to_f() + number2.to_f
          when '2'
            number1.to_f() - number2.to_f
          when '3'
            number1.to_f() * number2.to_f
          when '4'
            number1.to_f() / number2.to_f
  end

  prompt("The result is #{result}.")

  prompt("Do you want to perform another calculation? (Y to calculate again)")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt("Thank you for using our calculator!")
