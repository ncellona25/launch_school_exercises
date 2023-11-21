def center_of(string)
  index = string.size / 2
  if string.size.odd?
    string[index]
  else
    string[index - 1, 2]
  end
end

puts center_of('I love ruby')
puts center_of('Launch School')
puts center_of('Launch')
puts center_of('Launchschool')
puts center_of('x')
