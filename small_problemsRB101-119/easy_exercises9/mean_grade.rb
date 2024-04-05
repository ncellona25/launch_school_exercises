#  90 <= score <= 100 	'A'
#  80 <= score < 90 	'B'
#  70 <= score < 80 	'C'
#  60 <= score < 70 	'D'
#  0 <= score < 60 	'F'

def get_grade(num1, num2, num3)
  average = (num1 + num2 + num3) / 3
  case average
  when 90..100 then 'A'
  when 80..89  then 'B'
  when 70..79  then 'C'
  when 60..69  then 'D'
  else              'F'
  end
end

p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"