DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}

def string_to_int(str)
  arr = str.chars
  arr.map! do |char|
    DIGITS[char]
  end

  number = 0
  arr.each do |num|
    number = num + (number * 10)
  end
  number
end

p string_to_int('4321') == 4321
p string_to_int('570') == 570
#   *10 to add to each consecutive decimal 

