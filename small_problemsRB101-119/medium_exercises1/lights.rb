# 1000 lights
# you have a bank of switches before you, numbered from 1 to n. Each switch is connected to exactly one light that
# is initially off. You walk down the row of switches and toggle every one of them. You go back to the beginning,
# and on this second pass, you toggle switches 2, 4, 6, and so on. On the third pass, you go back again to the
# beginning and toggle switches 3, 6, 9, and so on. You repeat this process and keep going until you have been
# through n repetitions.

# Write a method that takes one argument, the total number of switches, and returns an Array that identifies
# which lights are on after n repetitions.

# P & E: Takes the total number of switches and want to return an array that identifies which lights are on
#        at the end of all repetitions

# Example with n = 5 lights:

# round 1: every light is turned on
# round 2: lights 2 and 4 are now off; 1, 3, 5 are on
# round 3: lights 2, 3, and 4 are now off; 1 and 5 are on
# round 4: lights 2 and 3 are now off; 1, 4, and 5 are on
# round 5: lights 2, 3, and 5 are now off; 1 and 4 are on
# 
# The result is that 2 lights are left on, lights 1 and 4. The return value is [1, 4].
# 
# With 10 lights, 3 lights are left on: lights 1, 4, and 9. The return value is [1, 4, 9].

# D: input: an integer representing the total # of switches
#    intermediate: an array representing all of the switches and their states(-1 or 1 for off and on **
#                  -1 and 1 easier to work with since can just multiply by -1 to toggle)
#    output: an array of the switches that are on

# A: Create an array of all the switches (all begin in the off position, so can append all -1 to the array)
#       -append n zeros to an empty array
#    Initialize a 'multiple' variable to account for the different passes and set it to initially reference 1

#    Iterate through the array for the first pass
#       -at each iteration, the given element is 'toggled' from -1 to 1
#       -all lights are on after this point
#       -increment 'multiple' by 1

#    Begin another loop to iterate (n - 1) more times through all the switches
#    Iterate through the switches array using map_with_index
#       -if (index + 1) % multiple == 0
#           -toggle the switch
#       -else
#           -next
#       increment multiple by 1 after each iteration

#    After all iterations are done and all lights have been passed through
#       -Return the lights array

#    Initialize results array
#    Iterate through the lights array using select_with_index
#       -if given element == 1
#         -append to results array index + 1 

def lights(number)
  switches = []
  number.times do |num|
    switches << -1
  end
  
  #first pass
  switches = switches.map do |el|
    el * -1
  end
  multiple = 2

  (number - 1).times do |num|
    switches = switches.map.with_index do |el, index|
      if (index + 1) % multiple == 0
        el * -1
      else
        el
      end
    end
    multiple += 1
  end

  results = []
  switches.each_with_index do |el, index|
    if el == 1
      results << index + 1
    else
      next
    end
  end

  results
end

p lights(5)
p lights(10)
p lights(1000)