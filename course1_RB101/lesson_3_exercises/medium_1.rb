10.times { |number| puts (' ' * number) + 'The Flintstones Rock!' }

#Question 2
# puts "the value of 40 + 2 is " + (40 + 2)
puts "the value of 40 + 2 is " + (40 + 2).to_s
#or
puts "the value of 40 + 2 is #{40 + 2}"

#Question 3
def factors(number)
  divisor = number
  factors = []
  while divisor > 0
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end
  factors
end

puts factors(16)
