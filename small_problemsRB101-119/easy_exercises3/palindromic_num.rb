def palindrome?(string)
  string == string.reverse
end

def palindromic_number?(int)
  string = int.to_s
  palindrome?(string)
end

puts palindromic_number?(34543) == true
puts palindromic_number?(123210) == false
puts palindromic_number?(22) == true
puts palindromic_number?(5) == true
