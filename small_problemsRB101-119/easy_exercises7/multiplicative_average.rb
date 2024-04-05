# Write a method that takes an Array of integers as input, multiplies all the numbers together, divides the result
# by the number of entries in the Array, and then prints the result rounded to 3 decimal places. Assume the array
# is non-empty.

# P & E: Multiply each integer in the array
#        Divide by the amount of integers
#        Format to three decimal places

# D: input: array
#    output: float rounded to 3 decimals

# A: Initialize product variable to reference 1.0(decimal for float value at end)
#    Iterate through the array of integers
#       - Multiply each integer by product and update product
#    Divide product once done iterating by size of array
#    Format to three decimal places

def show_multiplicative_average(arr)
  product = 1.0
  arr.each { |int| product *= int}
  puts "The result is #{format("%.3f", (product / arr.size))}"
end

p show_multiplicative_average([3, 5])                # => The result is 7.500
p show_multiplicative_average([6])                   # => The result is 6.000
p show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667

=begin
# Solution using inject

def show_multiplicative_average(array) 
  result = array.inject(:*).to_f / array.size
  puts "The result is #{format('%.3f', result)}"
end
=end