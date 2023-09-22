# define method that takes one argument
# argument must be a positive integer
# method must return a string of alternating 1s and 0s
# return must always start with 1 and match length of the string

#my solution using string concat
def stringy(integer)
  if integer % 2 == 0
    '10' * (integer/2)
  else
    string = '10' * (integer/2 + 1)
    string.slice!(-1)
    string
  end
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

#solution using array
def stringy2(size)
  #empty array to keep values
  numbers = []

  #Getting the 1s and 0s from the size of string
  size.times do |index|
    #index count starts at 0 which is even, so assigns even indexes to 1
    number = index.even? ? 1 : 0
    #appends to empty array
    numbers << number
  end

  #joins the array to a string
  numbers.join
end

puts stringy2(6) == '101010'
puts stringy2(9) == '101010101'
puts stringy2(4) == '1010'
puts stringy2(7) == '1010101'

#further exploration (default value set to 1, if changed to 0 then starting number is 0)

def stringy3(number, default_val = 1)
  string = ''

  #uses this structure ( [condition] ? [true] : [false] )
  if default_val == 1
    number.times { |index| index.even? ? string << '1' : string << '0' }
  elsif default_val == 0
    number.times { |index| index.even? ? string << '0' : string << '1' }
  end
  string
end

puts stringy3(6) == '101010'
puts stringy3(9) == '101010101'
puts stringy3(4) == '1010'
puts stringy3(7) == '1010101'
