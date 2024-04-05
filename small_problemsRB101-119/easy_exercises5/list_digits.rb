# Write a method that takes one argument, a positive integer, and returns a list of the digits in the number.

# P & E: Self-explanatory with the cases
#      puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
#      puts digit_list(7) == [7]                     # => true
#      puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
#      puts digit_list(444) == [4, 4, 4]             # => true

# D: Input: positive integer
#    Intermediate: Maybe array
#    Output: array of each digit

# A: Can convert input to string
#    Split the string into individual characters
#    Iterate through and convert each string into an integer
#    Return the array

def digit_list(int)
  arr = int.to_s.split('')

  result = arr.map do |val|
    val.to_i
  end
end


puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]  

=begin

# Brute force chopping end of integer and adding to `digits` array
def digit_list(number)
  digits = []
  loop do
    number, remainder = number.divmod(10)     # ==>12345.divmod(10) returns [1234, 5], easy to understand.
    digits.unshift(remainder)
    break if number == 0
  end
  digits
end


# Similar logic to my code but more dense

def digit_list(number)
  number.to_s.chars.map(&:to_i)
end

# (&:to_i) shorthand for:

something.map { |char| char.to_i }
=end