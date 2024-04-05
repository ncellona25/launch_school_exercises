# Write a method that displays a 4-pointed diamond in an n x n grid, where n is an odd integer that is
# supplied as an argument to the method. You may assume that the argument will always be an odd integer.

def diamond(number)
  counter = 1
  number.times do |num|
    if num < number/2
      puts ('*' * counter).center(number)
      counter += 2
    else
      puts ('*' * counter).center(number)
      counter -= 2
    end
  end
end
diamond(5)
diamond(9)