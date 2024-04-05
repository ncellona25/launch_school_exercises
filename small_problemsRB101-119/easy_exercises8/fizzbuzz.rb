# P & E: Write a method that takes two arguments: the first is the starting number, and the second
# is the ending number. Print out all numbers from the starting number to the ending number,
# except if a number is divisible by 3, print "Fizz", if a number is divisible by 5, print "Buzz",
# and finally if a number is divisible by 3 and 5, print "FizzBuzz".

# fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz

# D: input: two numbers (first = start number, second = ending number)
#    output: printed string or integer

# A: Initialize an array from start number to end number
#    Iterate through the array
#       -Initialize a case statement while iterating to determine output

def fizzbuzz(start, last)
  array = (start..last).to_a
  converted_values = array.map do |num|
    if num % 5 == 0 && num % 3 == 0
      "FizzBuzz"
    elsif num % 3 == 0
      "Fizz"
    elsif num % 5 == 0
      "Buzz"
    else
      num
    end
  end
  p converted_values.join(', ')
end
fizzbuzz(1, 15)