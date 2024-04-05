# P & E: Given an integer and want to return the next 'featured' number
#        A featured number is a multiple of 7, odd, and where the digits occur only once
#        Return an error message if there is no 'featured' number following

# D: input: integer
#    int:
#    output: 'featured' integer

# A: Take the integer and see if it is a multiple of 7
#    create a helper method for checking the featuredness of a number
#       - if not add one until it is
#         - then see if that number is featured
#             - if so return it, and if not add 7 to get the next multiple
#         - check if featured
#         - if so return, if not add 7 to get next multiple and check for featuredness

def featured?(num)
  num % 7 == 0 && num.odd? && num.digits.uniq == num.digits
end

def next_featured(num)
  multiple = num
  loop do
    loop do
      break if multiple % 7 == 0
      multiple += 1
    end
    return multiple if featured?(multiple) unless multiple == num
    multiple += 7
    break if num >= 9_876_543_210
  end
  'There is no possible number that fulfills those requirements.'
end

p next_featured(12) == 21
p next_featured(20) == 21
p next_featured(21) == 35
p next_featured(997) == 1029
p next_featured(1029) == 1043
p next_featured(999_999) == 1_023_547
p next_featured(999_999_987) == 1_023_456_987
p next_featured(9_999_999_999)