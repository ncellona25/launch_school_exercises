# P & E: Takes in an array and hash
#        The array elements when joined form a persons name
#        Hash has two keys (:title and :occupation)
#        Return a greeting that uses the full name with mention to title and occupation
# ex :
# greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
# => "Hello, John Q Doe! Nice to have a Master Plumber around."

# D: input: array and hash
#    Output: String with elements from the array and hash

def greetings(arr, hash)
  puts "Hello #{arr.join(' ')}! Nice to have a #{hash[:title]} #{hash[:occupation]} around."
end
greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })