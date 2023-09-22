nums = Array(1..99)
even_nums = nums.select { |num| num.even? }

even_nums.each do |num|
  puts num
end
