# Write a method that takes two Array arguments in which each Array contains a list of numbers, and returns
# a new Array that contains the product of every pair of numbers that can be formed between the elements
# of the two Arrays. The results should be sorted by increasing value.

# P & E: want to multiply the elements of the shorter array with the longer one
#        Results stored in a NEW array
#         - sorted by increasing value

# D: input: 2 arrays
#    output: one sorted array of integers

def multiply_pairs(arr1, arr2)
  products_arr = []
  arr1.each do |item1|
    arr2.each do |item2|
      products_arr << item1 * item2
    end
  end
  products_arr.sort
end

p multiply_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]