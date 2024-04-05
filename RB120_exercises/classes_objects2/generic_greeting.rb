# class Cat
# end

# Cat.generic_greeting

# Expected output:

# Hello! I'm a cat!

class Cat
  def self.generic_greeting
    puts "Hello! I'm a cat!"
  end
end
kitty = Cat.new
Cat.generic_greeting
p kitty.class.generic_greeting