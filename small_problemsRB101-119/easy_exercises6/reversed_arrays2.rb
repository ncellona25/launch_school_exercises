# P & E: Write a method that takes an Array, and returns a new Array with the elements of the original list in 
# reverse order. Do not modify the original list.

# D: input: array
#    output: different array with elements reversed

# A:  Set an index counter to 0
#     Map through the given array
#       - At each iteration increment the index by -1
#       - return the arr[index] (Walking down the array from the last index)



def reverse_arr(arr)
  index = 0
  arr.map do |element|
    index -= 1
    arr[index]
  end
end

p reverse_arr([1,2,3,4])
p reverse_arr(%w(a b e d c))

list = [1, 3, 2] 
new_list = reverse_arr(list)              # => [2, 3, 1]
p list.object_id != new_list.object_id
p new_list

=begin
# Given solution uses reverse_each. It's like each, except it processes the elements in reverse order. 
# Note that unlike each, reverse_each only applies to Arrays.

def reverse(array)
  result_array = []
  array.reverse_each { |element| result_array << element }
  result_array
end

=end