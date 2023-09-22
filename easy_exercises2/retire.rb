#Build a program that displays when the user will retire
#Also, have it tell how many years she must work until retirement

puts 'What is your age?'
age = gets.chomp.to_i

puts 'At what age would you like to retire?'
retirement_age = gets.chomp.to_i


current_year = 2023
years_to_work = retirement_age - age
retirement_year = current_year + years_to_work

puts "It's 2023.  You will retire in #{retirement_year}."
puts "You have only #{years_to_work} years of work to go!"
