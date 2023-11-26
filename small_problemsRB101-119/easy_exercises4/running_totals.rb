#Write a method that takes an Array of numbers, and returns an Array with the same 
# number of elements, and each element has the running total from the original Array.

#P & E: Not many questions
# running_total([2, 5, 13]) == [2, 7, 20]
# running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
# running_total([3]) == [3]
# running_total([]) == []

# D: input: array of integers
#    intermediate: integer counter for sum
#    output: array of integers (same length as input)

# A: Account for empty array given
#    Initialize a `sum` variable and set it to reference integer `0`
#    Initialize an empty array for `results`
#    Iterate through the given array
#    - at each iteration add the given element to the `sum`
#    - append `sum` to the `results array`
#    - return `results` array

def running_total(arr)
  return [] if arr.empty?
  sum = 0
  total_arr = []

  arr.each do |val|
    sum += val
    total_arr << sum
  end

  total_arr
end

p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []

#~10mins

=begin
# uses `map` to have the block return value `sum`
def running_total(array)
  sum = 0
  array.map { |value| sum += value }
end


=end
