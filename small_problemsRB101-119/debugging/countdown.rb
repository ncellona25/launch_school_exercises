# Our countdown to launch isn't behaving as expected. Why? Change the code so that our program successfully
# counts down from 10 to 1.

# def decrease(counter)
#   counter -= 1            #Omitted the decrease method and just decreased the counter in the loop
# end

counter = 10

counter.times do
  puts counter
  counter -= 1
end

puts 'LAUNCH!'