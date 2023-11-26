#Write a method that determines and returns the ASCII string value of a string that is passed in
#as an argument. The ASCII string value is the sum of the ASCII values of every character in 
#the string. (You may use String#ord to determine the ASCII value of a character.)

# P & E: Will we ever get integers inside of the strings given?
#        How does the method String#ord function? (Does it return an integer?)
#        Empty string returns `0`


# ascii_value('Four score') == 984
# ascii_value('Launch School') == 1251
# ascii_value('a') == 97
# ascii_value('') == 0

# D: input: string of characters(maybe numbers as well?)
#    intermediate: could split into an array / integer counter
#    output: integer 

# A: Initialize `sum` counter
#    Split the string into an array
#    Iterate through each element in the array
#       - find each iteration's ASCII value
#       - add ASCII val to the sum counter
#    Return `sum`

def ascii_value(str)
  sum = 0
  split_arr = str.chars

  split_arr.each do |char|
    sum += char.ord
  end
  sum
end

p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0

=begin
#Given solution does not split into array.  Uses String#each_char method
def ascii_value(string)
  sum = 0
  string.each_char { |char| sum += char.ord }
  sum
end

#one-liner

def ascii_value(string)
    string.chars.map { |char| char.ord }.sum
end

=end