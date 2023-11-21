def validate_num
  loop do
    puts ">> Please enter an integer greater than 0:"
    num = gets.chomp.to_i
    if num.positive?
      return num
    else
      puts "Invalid integer, must be larger than 0."
    end
  end
end

def validate_input
  loop do
    puts ">> Enter 's' to compute the sum or 'p' to compute the product."
    input = gets.chomp.downcase
    if input == 's' || input == 'p'
      puts "Valid operation, calculating now."
      return input
    else
      puts "Invalid operation entered, try again."
    end
  end
end

num = validate_num
input = validate_input

if input.downcase == 's'
  sum = (1..num).inject(:+)
  puts "The sum of the integers between 1 and #{num} is #{sum}."
elsif input.downcase == 'p'
  product = (1..num).inject(:*)
  puts "The product of the integers between 1 and #{num} is #{product}."
end
