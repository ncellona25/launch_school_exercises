#Write a method that takes a positive integer, n, as an argument, and displays a right triangle whose sides each have n stars.
#The hypotenuse of the triangle should have one end at the lower-left of the triangle, and the other end at the upper-right.

'''def triangle(integer)
  counter = 0
  space_counter = 1
  spaces = ''
  num_stars = ''

  while counter < integer
    spaces = ' ' * (integer-space_counter)
    num_stars << ''

    puts spaces + num_stars

    space_counter += 1
    counter += 1
  end
end

triangle(4)
triangle(9)
triangle(13)

Launch school solution much more concise
def concise_triangle(number)
  spaces = num - 1
  stars = 1

  number.times do |n|
    puts (' ' * spaces) + ('' * stars)
    spaces -= 1
    stars += 1
  end
end

triangle(4)
triangle(9)
triangle(13)
'''

#Further upside down exploration
def upside_down(number)
  stars = number
  spaces = 0

  number.times do |n|
    puts (' ' * spaces) + ('*' * stars)
    stars -= 1
    spaces += 1
  end
end

upside_down(4)
upside_down(9)
upside_down(13)


#Corners exploration
def corners(number, corner)
  case corner
  when corner == 'NE'
    stars = number
    spaces = 0

    number.times do |n|
      puts (' ' * spaces) + ('*' * stars)
      stars -= 1
      spaces += 1
    end

  when corner == 'SE'
    spaces = num - 1
    stars = 1

    number.times do |n|
      puts (' ' * spaces) + ('*' * stars)
      spaces -= 1
      stars += 1
    end
  end

corners(5, 'SE')
corners(5, 'NE')

def corners(num, corner)
  case corner
  when 'NW'


    num.times do
      puts "#{'*' * num}"
      num -= 1
    end

  when 'NE'

    space_num = 0

    num.times do
      puts (' ' * space_num) + ('*' * num)
      space_num += 1
      num -= 1
    end

  when 'SW'

    star_num = 1

    num.times do
    puts "#{'*' * star_num}"
    star_num += 1
    end

  when 'SE'

    star_num = 1

    num.times do
      print "#{' ' * (num - 1)}"
      puts "#{'*' * star_num}"
      num -= 1
      star_num += 1
    end
  else
    puts 'Invalid corner'
  end
end

corners(5, 'SE')
corners(5, 'NE')
corners(5, 'NW')
corners(5, 'SW')
