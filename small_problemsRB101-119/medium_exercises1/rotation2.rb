def rotate_array(arr)
  result = []

  result << arr[1, (arr.size - 1)] << arr[0]
  result.flatten
end


def rotate_right_most(num, last)
  return num if last == 1

  arr_chars = num.to_s.chars                        #array of characters
  rotated_end = rotate_array(arr_chars[-last..-1])  #rotate the last digits

  result = arr_chars[0, (arr_chars.size - last)] + rotated_end
  result.join.to_i
end

p rotate_right_most(735291, 1) == 735291
p rotate_right_most(735291, 2) == 735219
p rotate_right_most(735291, 3) == 735912
p rotate_right_most(735291, 4) == 732915
p rotate_right_most(735291, 5) == 752913
p rotate_right_most(735291, 6) == 352917

# Last digits are rotated and assigned(indexed assignment) to the same array in the given solution
=begin
def rotate_rightmost_digits(number, n)
  all_digits = number.to_s.chars
  all_digits[-n..-1] = rotate_array(all_digits[-n..-1])
  all_digits.join.to_i
end
=end