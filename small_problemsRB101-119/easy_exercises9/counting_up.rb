# P & E: Take an integer and return an array of all integers in sequence between 1 and the number given
#        Integer given will alwaus be greater than zero

# D: Input: integer
#    output: array of integers

# A: Loop

def sequence(num)
  result = []
  1.upto(num) do |num|
    result << num
  end
  result
end

p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]