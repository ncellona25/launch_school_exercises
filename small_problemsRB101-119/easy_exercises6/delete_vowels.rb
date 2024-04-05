# Write a method that takes an array of strings, and returns an array of the same string values,
# except with the vowels (a, e, i, o, u) removed.

# P & E : The problem only lists lowercase vowels, should Uppercase be removed as well
#         remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
#         remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
#         remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']

# D: Input: array of strings
#    Intermediate: array of all vowels
#    Output: array of strings with vowels removed

# A: Initialize an array with all vowels, upper and lower case inside
#    Iterate through the given array
#       - Iterate through each word in the array checking each character
#         - Check if the character is a vowel
#             -Remove if so and keep if not
#    Return the result

def remove_vowels(array)
  vowels_arr = %w(a e i o u A E I O U)

  array.map do |string|
    result_str = ''
    string.each_char do |char|
      if vowels_arr.include?(char)
        next
      else
        result_str << char
      end
    end
    result_str
  end
end

p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']
p remove_vowels(%w(green YELLOW black white))
p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz))

=begin
#given solution
#same logic as code above except without the nested iteration
#  -delete method used in map block

def remove_vowels(strings)
  strings.map { |string| string.delete('aeiouAEIOU') }
end

=end
