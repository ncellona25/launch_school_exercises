#The time of day can be represented as the number of minutes before or after midnight. If the number
#of minutes is positive, the time is after midnight. If the number of minutes is negative, 
#the time is before midnight.

#Write a method that takes a time using this minute-based format and returns the time of day in 24 
#hour format (hh:mm). Your method should work with any integer input.

#The Integer#divmod method and the % (modulo) operator may prove useful in your solution. You may 
#also find Kernel#format handy for formatting your results.

# P & E: 1440 minutes in a day
#        0 and 1440 lead to same result
#        Always given an integer
#        Got to find a way to format the result 

# time_of_day(0) == "00:00"
# time_of_day(-3) == "23:57"
# time_of_day(35) == "00:35"
# time_of_day(-1437) == "00:03"
# time_of_day(3000) == "02:00"
# time_of_day(800) == "13:20"
# time_of_day(-4231) == "01:29"

# D: input: given an integer (pos. or neg. and can be quite large)
#    intermediate: hint gave array from result of Integer#divmod
#    output: string with numbers

# A: 