def sum_digits(num)
  num.digits.sum
end

puts sum_digits(23) == 5
puts sum_digits(496) == 19
puts sum_digits(123_456_789) == 45
