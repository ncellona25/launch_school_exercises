#Write a method that takes a year as input and returns the century. The return value should 
#be a string that begins with the century number, and ends with st, nd, rd, or th as 
#appropriate for that number.
#New centuries begin in years that end with 01. So, the years 1901-2000 comprise the 20th century.

# P & E: Will we be given the year as a string or integer and will it always be that way?
#        What is the best way to find the given century for a year? (use ranges?, would be a lot of code)
#        How far does this go in terms of centuries? 

# D: Given an integer(year)  Output: string with proper suffix

# A: Convert the integer to string and find its size
#    If the size of the integer is 2 or less (must be in the 1st century)
#     - Or could just check if integer is less than 100
#       -3 or more and it depends on the number

#    Remove the last two integers
#     -using a helper method would make this clearer

#    If last two integers ends in 0, no need to increment its century
#    Otherwise, take the remaining integers and increment it by one
#    Add the correct suffix
#       -maybe utilize a helper method, `suffix()`
#       -remaining integers + 1 end in


def remove_last_two(int)
  arr = int.to_s.chars
  arr.pop(2)
  arr.join.to_i
end

def suffix(int)   #Can refactor to case statement?
  if int.to_s.end_with?('11', '12', '13') #This has to be the first conditional checked
    int.to_s + 'th'
  elsif int.to_s.end_with?('1')
    int.to_s + 'st'
  elsif int.to_s.end_with?('2')
    int.to_s + 'nd'
  elsif int.to_s.end_with?('3')
    int.to_s + 'rd'
  else
    int.to_s + 'th'
  end
end


def century(int)
  return '1st' if int <= 100
  converted_int = remove_last_two(int)

  if int.to_s[-1] == '0'   #Check if last integer is zero of the ORIGINAL **Bug cause did not convert 0 to '0'
    converted_int
  else
    converted_int += 1
  end
  suffix(converted_int)
end

p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'

#~ took about 30 mins with 10 mins of debugging the one problem in if statement

=begin
#Given solution
def century(year)
  century = year / 100 + 1
  century -= 1 if year % 100 == 0
  century.to_s + century_suffix(century)
end

def century_suffix(century)
  return 'th' if [11, 12, 13].include?(century % 100)
  last_digit = century % 10

  case last_digit
  when 1 then 'st'
  when 2 then 'nd'
  when 3 then 'rd'
  else 'th'
  end
end
=end