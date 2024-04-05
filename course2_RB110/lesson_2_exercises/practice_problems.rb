#  1) How would you order this array of number strings by descending numeric value?

arr = ['10', '11', '9', '7', '8']

arr.sort do |a, b|
  b.to_i <=> a.to_i
end

#  2) How would you order this array of hashes based on the year of publication of each book, 
# from the earliest to the latest?

books = [
  {title: 'One Hundred Years of Solitude', author: 'Gabriel Garcia Marquez', published: '1967'},
  {title: 'The Great Gatsby', author: 'F. Scott Fitzgerald', published: '1925'},
  {title: 'War and Peace', author: 'Leo Tolstoy', published: '1869'},
  {title: 'Ulysses', author: 'James Joyce', published: '1922'}
]

books.sort_by do |hash|
  hash[:published]
end
  

#  3) For each of these collection objects demonstrate how you would reference the letter 'g'.

arr1 = ['a', 'b', ['c', ['d', 'e', 'f', 'g']]]
arr1[2][1][3]


arr2 = [{first: ['a', 'b', 'c'], second: ['d', 'e', 'f']}, {third: ['g', 'h', 'i']}]
arr2[1][:third][0]


arr3 = [['abc'], ['def'], {third: ['ghi']}]
arr3[2][:third][0][0]

hsh1 = {'a' => ['d', 'e'], 'b' => ['f', 'g'], 'c' => ['h', 'i']}
hsh1['b'][1]

hsh2 = {first: {'d' => 3}, second: {'e' => 2, 'f' => 1}, third: {'g' => 0}}
hsh2[:third].key(0)
# Hash#key method returns the key of an occurrence of a given value. 
# If more than one key has the same value the method returns the key for the first occurrence of 
# that value.
# If the requested value does not exist in the hash then nil is returned.


#  4) For each of these collection objects where the value 3 occurs, demonstrate
# how you would change this to 4.

arr1 = [1, [2, 3], 4]
arr1[1][1] = 4

arr2 = [{a: 1}, {b: 2, c: [7, 6, 5], d: 4}, 3]
arr2[2] = 4

hsh1 = {first: [1, 2, [3]]}
hsh1[:first][2][0] = 4


hsh2 = {['a'] => {a: ['1', :two, 3], b: 4}, 'b' => 5}
hsh2[["a"]][:a][2] = 4

#  5) Consider this nested Hash:
#     Determine the total age of just the male members of the family.
munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

sum = 0
munsters.select do |key, val|
  val['gender'] == 'male'
end.each { |_, val| sum += val['age']}
sum #=> 444

=begin
#More concise solution where we do not have to iterate through twice.  uses #each_value
total_male_age = 0
munsters.each_value do |details|
  total_male_age += details["age"] if details["gender"] == "male"
end

total_male_age # => 444
=end


#  6) One of the most frequently used real-world string properties is that of "string substitution", 
#  where we take a hard-coded string and modify it with various parameters from our program.

#Given this previously seen family hash, print out the name, age and gender of each family member:

munsters.each do |key, val|
  puts "#{key} is a #{val['age']}-year-old #{val['gender']}."
end

#  7) Given this code, what would be the final values of a and b? 
#  Try to work this out without running the code.

a = 2
b = [5, 8]
arr = [a, b]

arr[0] += 2
arr[1][0] -= a

# a remains pointing at 2 so arr = [4, [3, 8]]


#  8) Using the each method, write some code to output all of the vowels from the strings.

hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}
vowels = %w(a e i o u)

hsh.each do |key, val|
  val.each do |str|
    str.each_char { |char| puts char if vowels.include?(char) }
  end
end


#  9) Given this data structure, return a new array of the same structure but with the sub arrays being 
#  ordered (alphabetically or numerically as appropriate) in descending order.

arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

arr.map do |arr|
  arr.sort { |a, b| b <=> a }
end

#  10) Given the following data structure and without modifying the original array, use the map method to
# return a new array identical in structure to the original but where the value of each integer is incremented by 1.

[{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]

arr.map do |hsh|
  new_hash = {}
  hsh.map do |key, val|
    new_hash[key] = val + 1
  end
  new_hash
end


[{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}].each_with_object([]) do |hsh, arr|
  incremented_hash = {}
  hsh.each do |key, value|
    incremented_hash[key] = value + 1
  end
  arr << incremented_hash
end

# => [{:a=>2}, {:b=>3, :c=>4}, {:d=>5, :e=>6, :f=>7}]

#  11) Given the following data structure use a combination of methods, including either the select or reject method, 
#to return a new array identical in structure to the original but containing only the integers that are multiples of 3.

arr = [[2], [3, 5, 7, 12], [9], [11, 13, 15]]

arr.map do |sub_arr|
  sub_arr.select do |int|
    int % 3 == 0
  end
end

#  12) Given the following data structure, and without using the Array#to_h method, write some code that will return
#  a hash where the key is the first item in each sub array and the value is the second item.

arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]

arr.map do |sub_arr|
  new_hash = {}
  sub_arr.each do
    new_hash[sub_arr[0]] = sub_arr[1]
  end
  new_hash
end


#  13) Given the following data structure, return a new array containing the same sub-arrays as the original but 
# ordered logically by only taking into consideration the odd numbers they contain.

arr = [[1, 6, 9], [6, 1, 7], [1, 8, 3], [1, 5, 9]]

arr.sort_by do |sub_arr|
  sub_arr.select do |num|
    num.odd?
  end
end


#  14) Given this data structure write some code to return an array containing the colors of the fruits, 
#  and the sizes of the vegetables. The sizes should be uppercase and the colors should be capitalized.

hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}

result_arr = []

hsh.each_value do |sub_arr|
  result_arr << sub_arr[:colors]
  result_arr << sub_arr[:size].upcase
end

result_arr.each do |element|
  if element.is_a?Array
    element.each do |str|
      str.capitalize!
    end
  end
end
=begin
# Actual solution which maps through the hash and checks for :type

hsh.map do |_, value|
  if value[:type] == 'fruit'
    value[:colors].map do |color|
      color.capitalize
    end
  elsif value[:type] == 'vegetable'
    value[:size].upcase
  end
end

=end

#  15) Given this data structure write some code to return an array which contains only the hashes where
#  all the integers are even.

arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]

arr.map do |sub_hsh|
  sub_hsh.select do |key, val|
    val.all? { |int| int.even? }
  end
end
# => [{}, {:b=>[2, 4, 6], :d=>[4]}, {:e=>[8], :f=>[6, 10]}]


# *The code above gets all the values where all integers are even.  The problem wanted the entire hashes where 
#  every integer in the values arrays were even.

##  expected result # => [{:e=>[8], :f=>[6, 10]}] Wasn't clear

arr.select do |sub_hsh|
  sub_hsh.all? do |key, val|  # some subhashes have multiple values and all of them have to pass the condition
    val.all? { |int| int.even?}
  end
end

