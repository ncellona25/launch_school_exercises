# double number is a number with an even number of digits whose left-side digits are exactly the
# same as its right-side digits
# 44, 3333, 103103, 7676 are all double numbers. 444, 334433, and 107 are not.
# P & E: method that returns two times the number given as argument
#        unless argument is a double number(return as is)

# D: input: integer
#    intermediate: string
#    output: result of double the integer or just as is

# A: Convert the integer to a string
#    Check if the first half of the string is equal to the second half
#       - If so return string as is
#       - If not double the given integer

def twice(num)
  string = num.to_s
  length_of_half = string.length/2

  if string[0, length_of_half] == string[length_of_half, length_of_half] &&
     string.length.even?
    num
  else
    num*2
  end
end

p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) #== 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10
