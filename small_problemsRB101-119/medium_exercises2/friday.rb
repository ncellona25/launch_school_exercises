require 'date'

def friday_13th(year)
  month_count = 1
  unlucky = 0

  12.times do 
    unlucky += 1 if Date.new(year, month_count, 13).friday?
    month_count += 1
  end

  unlucky
end

p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2