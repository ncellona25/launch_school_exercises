#In the modern era under the Gregorian Calendar, leap years occur in every year that is evenly 
#divisible by 4, unless the year is also divisible by 100. If the year is evenly divisible by 100, 
#then it is not a leap year unless the year is evenly divisible by 400.

#Assume this rule is good for any year greater than year 0. Write a method that takes any year 
#greater than 0 as input, and returns true if the year is a leap year, or false if it is not a 
#leap year.

# P & E: Always given the year as an integer?
# D: Given an integer greater than zero
#    output: boolean object `true` or `false`

# A: First check if the integer is divisible by 4
#     -if so, make sure it is not divisible by 100
#       -if divisible by 100, return false unless it is divisible by 400

def leap_year?(year)
  if year % 4 == 0 && year % 100 != 0
    true
  elsif year % 4 == 0 && year % 100 == 0
    year % 400 == 0 ? true : false
  else
    false
  end
end

p leap_year?(2016) == true
p leap_year?(2015) == false
p leap_year?(2100) == false
p leap_year?(2400) == true
p leap_year?(240000) == true
p leap_year?(240001) == false
p leap_year?(2000) == true
p leap_year?(1900) == false
p leap_year?(1752) == true
p leap_year?(1700) == false
p leap_year?(1) == false
p leap_year?(100) == false
p leap_year?(400) == true

=begin
#Given solution tests for least common cases first (Opposite order of mine)

def leap_year?(year)
  if year % 400 == 0
    true
  elsif year % 100 == 0
    false
  else
    year % 4 == 0
  end
end

=end
# 10-15 minutes