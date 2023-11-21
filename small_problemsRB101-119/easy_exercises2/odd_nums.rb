odd_nums = Array(1..99)
odd_nums.select! { |num| num.odd? }

odd_nums.each do |num|
  puts num
end

print odd_nums
