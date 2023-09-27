#Write a program that will ask a user for an input of a word or multiple words
#give back the number of characters spaces should not be counted

puts "Please write word or multiple words:"
string = gets.chomp
no_spaces = string.delete(' ')
puts "There are #{no_spaces.length} characters in #{string}."
