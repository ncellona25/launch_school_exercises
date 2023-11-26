# Write a method that searches for all multiples of 3 or 5 that lie between 1 and some other number,
# and then computes the sum of those multiples. For instance, if the supplied number is 20, 
# the result should be 98 (3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20).

# You may assume that the number passed in is an integer greater than 1.

# P & E: no questions to ask here, seems pretty clear
# D: input: integer   intermediate: array to store all numbers from 1 to given integer
#    output: one integer representing the sum of all multiples


# A: Initialize an empty `results` array
#    Initialize an array of all numbers from 1 to the given integer
#    Iterate through the given array
#       - check if each element is a multiple of 3 or 5 
#       - if so append given element to the `results` array
#    Sum the results array
#    Return the sum

def multisum(num)
  results = []
  array = (1..num).to_a

  array.each do |val|
    results << val if val % 3 == 0 || val % 5 == 0
  end
  results.sum
end


p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168

#Done quick
=begin
#Given solution utilizes a helper function and the `upto` method
def multiple?(number, divisor)
  number % divisor == 0
end

def multisum(max_value)
  sum = 0
  1.upto(max_value) do |number|
    if multiple?(number, 3) || multiple?(number, 5)
      sum += number
    end
  end
  sum
end

=end

