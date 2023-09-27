numbers = []

puts "==> Enter the 1st number:"
num_1 = gets.chomp.to_i
numbers << num_1

puts "==> Enter the 2nd number:"
num_2 = gets.chomp.to_i
numbers << num_2

puts "==> Enter the 3rd number:"
num_3 = gets.chomp.to_i
numbers << num_3

puts "==> Enter the 4th number:"
num_4 = gets.chomp.to_i
numbers << num_4

puts "==> Enter the 5th number:"
num_5 = gets.chomp.to_i
numbers << num_5

puts "Enter the last number:"
last_num = gets.chomp.to_i

if numbers.include?(last_num)
  puts "#{last_num} is found in #{numbers}."
else
  puts "#{last_num} is not found in #{numbers}."
end
