# Write a method that takes a positive integer or zero, and converts it to a string representation.


DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

def integer_to_string(num)
  num.digits.reverse.map { |num| DIGITS[num] }.join
end


p integer_to_string(4321) == '4321'
p integer_to_string(0) #== '0'
p integer_to_string(5000) #== '5000'