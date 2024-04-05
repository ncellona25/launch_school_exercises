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

# A: normalize the input (between 0 and 1439)
#       - treat negative numbers first by adding 1440 until positive
#       - For pos. numbers take the num % 1440 to get it normalized
#    Use divmod to get hours and minutes from the normalized number
#    format the result into 24 hour 

def time_of_day(minutes)
  minutes = minutes % 1440

  ans_hour, ans_min = minutes.divmod(60)
  format('%02d:%02d', ans_hour, ans_min)
end


p time_of_day(0) == "00:00"
p time_of_day(-3)  == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"
