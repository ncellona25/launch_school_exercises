#Create a simple mad-lib program that prompts for a noun, a verb, an adverb, and an adjective
#Injects the arguments into a story that you create

puts 'Enter a noun:'
noun = gets.chomp
puts 'Enter a verb:'
verb = gets.chomp
puts 'Enter an adverb:'
adverb = gets.chomp
puts 'Enter an adjective:'
adjective = gets.chomp

def story(noun, verb, adverb, adjective)
  puts "On a #{adjective} day, do you #{adverb} #{verb} your #{noun}?"
end

story(noun, verb, adverb, adjective)
