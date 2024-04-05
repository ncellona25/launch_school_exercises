# Write a method named include? that takes an Array and a search value as arguments. This method should return
# true if the search value is in the array, false if it is not. You may not use the Array#include? method in
# your solution.

# P & E: Will we be given other data structures as arguments (hashes, arrays, strings, etc)?
#        Cannot use method Array#include?
#        return true or false
#        include?([1,2,3,4,5], 3) == true
#        include?([1,2,3,4,5], 6) == false
#        include?([], 3) == false
#        include?([nil], nil) == true
#        include?([], nil) == false

# D: input: array
#    output: Boolean object

# A: Iterate through the given array using each
#       - check if each element is equal to the given search argument
#           - if so then return true
#           - else go to next iteration
#    Specifically return false if search element not found

def include?(arr, search)
  arr.each do |el| 
    return true if el == search
  end
  false
end

p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false

=begin

def include?(array, value)
  !!array.find_index(value)
end
=end