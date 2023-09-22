def reverse(integer)
  string = integer.to_s
  string.reverse!
  string.to_i
end

puts reverse(12345) == 54321
puts reverse(12213) == 31221
puts reverse(456) == 654
puts reverse(12000) == 21 # No leading zeros in return value!
puts reverse(12003) == 30021
puts reverse(1) == 1
