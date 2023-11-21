#Build a program that asks a user for the length and width of a room in meters
#then displays the area of the room in both square meters and square feet.

puts 'Enter the length of the room in meters:'
length = gets.chomp.to_i

puts 'Enter the width of the room in meters:'
width = gets.chomp.to_i

area_in_meters = length * width
area_in_feet = area_in_meters * 10.7639

puts area_in_meters
puts area_in_feet
