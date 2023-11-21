ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
puts ages.key?("Spot")
puts ages.include?("Spot")

#Question2
munsters_description = "The Munsters are creepy in a good way."
p munsters_description.swapcase
p munsters_description.capitalize
p munsters_description.downcase
p munsters_description.upcase

#Question 3
additional_ages = { "Marilyn" => 22, "Spot" => 237 }
ages.merge!(additional_ages)

#Question 4
advice = "Few things in life are as important as house training your pet dinosaur."
p advice.include?('dino')
p advice.match?('dino')

#Question 5
flintstones = %w[Fred Barney Wilma Betty BamBam Pebbles]

#Question 6
flintstones.append("Dino")

#Question 7
flintstones.insert(-1, 'Dino', 'Hoppy')

#Question 8
advice.slice!(0, advice.index('house'))
p advice

#Question 9
statement = "The Flintstones Rock!"
statement.count("t")

#Question 10
title = "Flintstone Family Members"
title.center(40)
