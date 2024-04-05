# P & E: Write a method that takes an Array of numbers and then returns the sum of the sums of each leading
# subsequence for that Array. You may assume that the Array always contains at least one number.

#Examples:

#sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
#sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
#sum_of_sums([4]) == 4
#sum_of_sums([1, 2, 3, 4, 5]) == 35

# D: input: array
#    intermediate: array
#    output: integer representing sum of sums

# A: initialize an empty 'sum_arr' array to hold the sum at each iteration
#    Initialize a 'sum' variable to hold the total sum
#    Iterate through the given array 
#      -at each iteration append the current element to 'sum_arr'
#      -find the sum of 'sum_arr' and add to 'sum'
#    Return total 'sum'

def sum_of_sums(arr)
  sum_arr = []
  sum = 0

  arr.each do |el|
    sum_arr << el
    sum += sum_arr.sum
  end
  sum
end

p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35