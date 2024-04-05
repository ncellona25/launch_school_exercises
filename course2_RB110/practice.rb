# Find the missing letter
# Write a method that takes an array of consecutive (increasing) letters as input and that returns the missing
# letter in the array.
#
# You will always get an valid array. And it will be always exactly one letter be missing. The length of the
# array will always be at least 2.
#
# The array will always contain letters in only one case.
#
# P & E: All given letters in the array will be all the same case
#        Want to find the missing letter in the sequence
#          - always given an array of characters at least 2 sizes long
#
# D: input: array
#    intermediate: array
#    output: string
#
# A: Create an array of the entire alphabet (both lowercase and uppercase) and store as constant
#    Get a slice of the constant and store in a variable (complete sequence)
#       - use index of first char in given array and last index
#    Loop through the given array and check whether each character is in the sequence
#       - when false, return the character
#    Instead subtracted the given arr from the complete sequence to find missing
#       - called join on single element array to convert to string

# Example:
#
# ['a','b','c','d','f'] -> 'e'
# ['O','Q','R','S'] -> 'P'

# Use the English alphabet with 26 letters.

=begin
ALPHABET = ('a'..'z').to_a + ('A'..'Z').to_a

def find_missing_letter(arr)
  complete_seq = ALPHABET[ALPHABET.index(arr[0])..ALPHABET.index(arr[-1])]
  
  missing = (complete_seq - arr).join
end

p find_missing_letter(["a","b","c","d","f"]) == "e"
p find_missing_letter(["O","Q","R","S"]) == "P"
p find_missing_letter(["b","d"]) == "c"
p find_missing_letter(["a","b","d"]) == "c"
p find_missing_letter(["b","d","e"]) == "c"
=end



# For "x", determine how many positive integers less than or equal to "x" are odd but not prime. Assume "x" is an
# integer between 1 and 10000.

# Example: 5 has three odd numbers (1,3,5) and only the number 1 is not prime, so the answer is 1
# Example: 10 has five odd numbers (1,3,5,7,9) and only 1 and 9 are not prime, so the answer is 2

# A prime number (or a prime) is a natural number greater than 1 that has no positive divisors other than 1 and itself.

# P & E: Want to get a count of odd numbers that are NOT prime
#        Numbers are positive integers from 1 to given integer

# D: input: integer
#    intermediate: array of all integers from 1 to x
#    output: integer count of not primes and odd

# A: Create an array of all positive integers from 1 to x
#    Iterate through the given array (select) and store result in variable
#       - set criteria to be odd and not prime
#    Return the size of the selected array

=begin
require 'prime'

def odd_not_prime(number)
  array = (1..number).to_a

  not_primes_odd = array.select do |num|
    num.odd? && !num.prime?
  end

  not_primes_odd.size
end

p odd_not_prime(15) == 3
p odd_not_prime(48) == 10
p odd_not_prime(82) == 20
=end

=begin
# this solution uses a helper method to determine if a number is prime or not
# the helper method replaces the .prime? call in the solution above
# shows the algorithmic approach for determining if a number is prime or not

def is_prime(num)
  return false if num < 2
  (2..(num - 1)).each do |n|
    return false if num % n == 0
  end
  true
end

def odd_not_prime(num)
  array = (1..num).to_a

  not_primes_odd = array.select do |num|
    num.odd? && !is_prime(num)
  end.size
end
p odd_not_prime(15) == 3
p odd_not_prime(48) == 10
p odd_not_prime(82) == 20


# Given 2 strings your job is to find out if there is a substring that appears in both strings.
# You will return true if you find a substring that appears in both strings, or false if you do not.
# ***We only care about strings that are longer than one letter long.

# input: 2 strings
# intermediate: 2 arrays containing all substrings
# output: boolean

# Algo
# Return false if string.empty?
# downcase both strings to work with them (case does not matter)
# substrings1 will contain all substrings from the first given string
# ***Remove all one letter substrings using reject
# substrings2 will contain substrings from the second string
# iterate through either substrings array
#   - check each iteration if the current substring is also included in the other array
#   - if so return true
# return false

def scramble(str1, str2)
  small_str, bigger_str = [str1, str2].sort_by { |str| str.size }
  bigger_str_chars = bigger_str.chars
  small_str.chars.each do |char|
    if bigger_str_chars.include?(char)
      bigger_str_chars.delete_at(bigger_str_chars.index(char))
    else
      return false
    end
  end
  true
end
p scramble('sports', 'support')
p scramble('javaass', 'jjss')
p scramble('cedewaraaossoqqyt', 'codewars')
p scramble('katas', 'steak') == false
p scramble('scriptjava', 'javascript') == true
p scramble('scriptingjava', 'javascript') == true



# A substring is a contiguous (non-empty) sequence of characters within a string.

# A vowel substring is a substring that only consists of vowels ('a', 'e', 'i', 'o', and 'u') and has all
# five vowels present in it.

# Given a string word, return the number of vowel substrings in word.

#p count_vowel_substrings("abcde") == 0
#p count_vowel_substrings("cuaieuouac") == 7
#p count_vowel_substrings("aeiouu") == 2
#p count_vowel_substrings("unicornarihan") == 0


def longest_palindrome(str)
  return 0 if str.empty?
  return 1 if str.chars.uniq == str.chars
  substrings = []
  

  (0...str.size).each do |num|
    (num...str.size).each do |num2|
      substrings << str[num..num2]
    end
  end
  substrings.select { |substr| substr.reverse == substr }.max_by { |substr| substr.size }.size
end

p longest_palindrome('a')
p longest_palindrome('abcde')
p longest_palindrome('baabcd')
p longest_palindrome('I like racecars that go fast')
p longest_palindrome('baablkj12345432133d')



# Problem
# Given an array of integers find the index, N, where the sum of ints to the left is == sum of ints on the right
# If no index makes this happen return -1

# ex: [1, 2, 3, 4, 3, 2, 1] #==> 3
#     [20, 10, -80, 10, 10, 15, 35]   at index 0 left side is [] and right side sums to 0 (empty arrays == 0)

# input: array of integers
# output: index where elements to the left summed == elements to the right summed

# Algorithm: 
# Iterate through the given array with_index
#   - set left_sum = 0 if the current index is 0
#   - otherwise left_sum = array slice from 0 up to but not including idx (sum of those elements)
#   - right sum = array slice next element from current index up to the end of the array (sum of those elements)
#   - return index if left sum == right sum
# Return -1

def find_even_index(arr)
  arr.each_with_index do |num, idx|
    left_sum = 0 if idx == 0
    left_sum = arr[0...idx].sum
    right_sum = arr[idx + 1, arr.size].sum
    return idx if left_sum == right_sum
  end
  -1
end

p find_even_index([1, 2, 3, 4, 3, 2, 1])
p find_even_index([20, 10, -80, 10, 10, 15, 35])
p find_even_index([1, 2, 3, 4, 5, 6])
p find_even_index([10, -80, 10, 10, 15, 35, 20])
=end

# module Offroad
#   def offroad
#     "This vehicle can offroad"
#   end
# end

# class Vehicle
#   attr_accessor :color
#   attr_reader :year
#   @@number_of_vehicles = 0

#   def self.gas_mileage(miles, gallons)
#     miles / gallons
#   end  

#   def initialize(y, c, m)
#     @year = y
#     @color = c
#     @model = m
#     @speed = 0
#     @@number_of_vehicles += 1
#   end

#   def self.number_of_vehicles
#     "You have #{@@number_of_vehicles} vehicles in total."
#   end

#   def speed_up(num)
#     @speed += num
#   end

#   def brake(num)
#     @speed -= num
#   end

#   def off
#     @speed = 0
#   end

#   def show_speed
#     "Your vehicle is traveling at #{@speed} mph."
#   end

#   def spray_paint(color)
#     self.color = color
#     puts "Your #{color} paint job is finished!"
#   end

#   def age
#     "This #{@model} is #{car_years} years old."
#   end
#   private

#   def car_years
#     Time.now.year - (self.year).to_i
#   end
# end

# class MyTruck < Vehicle
# include Offroad
#   WEIGHT = 25000
#   def to_s
#     "My truck is a #{@color} #{@year} #{@model}."
#   end
# end

# class MyCar < Vehicle
#   WEIGHT = 12500
#   def to_s
#     "My car is a #{@color} #{@year} #{@model}."
#   end
# end

# class Student
#   def initialize(name, grade)
#     @name = name
#     @grade = grade
#   end

#   def better_grade_than?(other_person)
#     grade > other_person.grade
#   end

#   protected
#   attr_reader :grade
# end

# bob = Student.new("Bob", 89)
# new_student = Student.new("Nicolas", 92)
# puts "Well done!" if new_student.better_grade_than?(bob)


# chevy = MyCar.new('2015', 'Black', 'Chevy Cruze')
# my_truck = MyTruck.new('2012', 'Grey', "Toyota Tacoma")
# puts Vehicle.number_of_vehicles

# my_truck.spray_paint("Red")
# puts chevy
# puts my_truck.age

# puts MyCar.ancestors
# puts "----"
# puts MyTruck.ancestors
# puts "----"
# puts Vehicle.ancestors

# Create a sub-class from Dog called Bulldog overriding the swim method to return "can't swim!"

class FarmAnimal
  def speak
    "#{self.class} says "
  end
end

class Sheep < FarmAnimal
  def speak
    super + "baa!"
  end
end

class Lamb < Sheep
  def speak
    super + "baaaaaaa!"
  end
end

class Cow < FarmAnimal
  def speak
    super + "mooooooo!"
  end
end

p Sheep.new.speak # => "Sheep says baa!"
p Lamb.new.speak # => "Lamb says baa!baaaaaaa!"
p Cow.new.speak # => "Cow says mooooooo!"