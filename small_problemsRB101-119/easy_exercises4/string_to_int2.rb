DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}

def string_to_signed_int(str)
  arr = str.chars         #array of characters

  arr.map! do |char|      #convert array to digits if in hash
    if DIGITS.key?(char)
      DIGITS[char]
    else
      char
    end
  end

  number = 0          #initialize result variable
  sign = ''           #initialize the sign variable

  if arr[0] == '-' || arr[0] == '+'  #if conditional to remove the first character if it is a sign and store in `sign`
    sign = arr.shift
  end

  arr.each do |el|      #iterate through array of numbers and update the result `number` variable
    number = el + number * 10
  end

  if sign == '-'      #if conditional to determine the returned result.  `sign` changes end result
    number * -1
  else
    number
  end
end

p string_to_signed_int('4321')
p string_to_signed_int('-570')
p string_to_signed_int('+100')

=begin
# Given solution utilizes the previous method in string_to_int.rb

def string_to_signed_int(string)
  case string[0]
  when '-' then -string_to_integer(string[1..-1])
  when '+' then string_to_integer(string[1..-1])
  else          string_to_integer(string)
  end
end

=end
