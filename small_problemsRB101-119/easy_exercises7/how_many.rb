# Write a method that counts the number of occurrences of each element in a given array.

# P & E: vehicles = [
#          'car', 'car', 'truck', 'car', 'SUV', 'truck',
#          'motorcycle', 'motorcycle', 'car', 'truck'
#        ]
#        
#        count_occurrences(vehicles)

# The words in the array are case-sensitive: 'suv' != 'SUV'. Once counted,
# print each element alongside the number of occurrences.

# D: input: array of elements
#    intermediate: hash
#    output: strings printed out ('element' => count of element)

# A: Initialize an empty hash to hold the count of each element
#    Iterate through the given array
#       - If given element is a key in the hash 
#           - += 1 to value
#       - If not set it as a key with value 0
#    Print out the keys and values of the hash

def count_occurrences(arr)
  result_hash = Hash.new { |hash, key| hash[key] = 1}
  arr.each do |el|
    if result_hash.keys.include?(el)
      result_hash[el] += 1
    else
      result_hash[el]
    end
  end
  result_hash.each { |key, val| puts "#{key} => #{val}"}
end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

p count_occurrences(vehicles)


=begin
#Using Array#uniq to iterate through all elements once
#Combined with Array#count to get the number for each element while simultaneously storing in hash

def count_occurrences(array)
  occurrences = {}

  array.uniq.each do |element|
    occurrences[element] = array.count(element)
  end

  occurrences.each do |element, count|
    puts "#{element} => #{count}"
  end
end
=end
