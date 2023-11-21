#Create a simple tip calculator, prompt for a bill amount and a tip rate
#compute the tip and then display both the tip and the total amount

puts 'What is the bill?'
bill = gets.chomp.to_f

puts 'What is the tip percentage?'
tip_percent = gets.chomp.to_f * 0.01

tip = (bill * tip_percent).round(2)
puts "The tip is #{format("$%.2f", tip)}."

total = (bill + tip).round(2)
puts "The total for the night is #{format("$%.2f", total)}."
