#Write a program that prompts the user for two positive integers
#Then prints the results of those two numbers: addition, subtraction, product, quotient, remainder, and power.

puts "==> Enter the 1st number:"
num_1 = gets.chomp.to_i

puts "==> Enter the 2nd number:"
num_2 = gets.chomp.to_i

puts "==> #{num_1} + #{num_2} = #{num_1 + num_2}"
puts "==> #{num_1} - #{num_2} = #{num_1 - num_2}"
puts "==> #{num_1} * #{num_2} = #{num_1 * num_2}"
puts "==> #{num_1} / #{num_2} = #{num_1 / num_2}"
puts "==> #{num_1} % #{num_2} = #{num_1 % num_2}"
puts "==> #{num_1} ** #{num_2} = #{num_1 ** num_2}"
