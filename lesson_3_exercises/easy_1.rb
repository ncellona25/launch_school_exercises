#Question 5
puts (10..100).to_a.include?(42)
(10..100).cover?(42)

#Question 6
famous_words = "seven years ago..."
four_score = "Four score and "
full_quote = four_score + famous_words
puts full_quote
puts four_score << famous_words

#Question 7
flintstones = ["Fred", "Wilma"]
flintstones << ["Barney", "Betty"]
flintstones << ["BamBam", "Pebbles"]
flintstones.flatten!
p flintstones

#Question 8
flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }
barney_array = flintstones.assoc("Barney")
p barney_array
