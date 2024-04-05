# P & E: Write a method that takes an Array as an argument, and reverses its elements in place; that is, 
# mutate the Array passed into this method. The return value should be the same Array object.
# You may not use Array#reverse or Array#reverse!.

# D: input: array of strings or integers (will we be given nested arrays/hashes?)
#    intermediate : array
#    output: array with reversed elements (same object as argument)

# A:  Initialize an index counter starting at zero
#     Initialize a copy of the array
#     Map destructively
#       - inside each iteration
#           - Store the last element of the copy in a variable and return it

def reverse_arr(arr)
  index = 0
  copy = arr.clone
  arr.map! do |element|
    index -= 1
    last = copy[index]
  end
end

list = %w(a b e d c)
p reverse_arr(list)

list2 = [1,2,3,4]
p reverse_arr(list2)

list_3 = ["abc"]
p reverse_arr(list_3)

=begin 
#Given solution ets one index to point to the beginning of the array, another index to point to the end of the array,
# and then walks through stopping at the middle.
# parallel assignment on line 44; Ruby idiom for exchanging two values without requiring an intermediate variable

def reverse!(array)
  left_index = 0
  right_index = -1

  while left_index < array.size / 2
    array[left_index], array[right_index] = array[right_index], array[left_index]
    left_index += 1
    right_index -= 1
  end

  array
end
=end
