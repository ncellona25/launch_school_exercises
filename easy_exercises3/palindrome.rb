#Write a method that returns true if the string passed as an argument is a palindrome
#case matters as does punctuation and spaces

def palindrome?(string)
  string == string.reverse
end

puts palindrome?('madam') == true
puts palindrome?('Madam') == false
puts palindrome?("madam i'm adam") == false
puts palindrome?('356653') == true
