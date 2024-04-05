# Create the Class

# Create an empty class named Cat.


# Create the Object

# Using the code from the previous exercise, create an instance of Cat and assign it to a variable named kitty.

# Code:



# What Are You?

# Using the code from the previous exercises, add an #initialize method that prints I'm a cat!
# when a new Cat object is instantiated.


# Expected output:

# I'm a cat!


# Hello, Sophie! (Part 1)

# Using the code from the previous exercise, add a parameter to #initialize that provides a name for
# the Cat object. Use an instance variable to print a greeting with the provided name.
# (You can remove the code that displays I'm a cat!.)

# Expected output:

# Hello! My name is Sophie!

# Hello, Sophie! (Part 2)

# Using the code from the previous exercise, move the greeting from the #initialize method
# to an instance method named #greet that prints a greeting when invoked.


# kitty = Cat.new('Sophie')
# kitty.greet

# Expected output:

# Hello! My name is Sophie!

# class Cat
#   def initialize(name)
#     @name = name
#   end

#   def greet
#     puts "Hello! My name is #{@name}!"
#   end
# end

# kitty = Cat.new("Sophie")
# kitty.greet


# Reader

# Using the code from the previous exercise, add a getter method named #name and invoke it
# in place of @name in #greet.

# Expected output:

# Hello! My name is Sophie!

# class Cat
#   def initialize(name)
#     @name = name
#   end

#   def name
#     @name
#   end

#   def greet
#     puts "Hello! My name is #{name}!"
#   end
# end

# kitty = Cat.new("Sophie")
# kitty.greet
# p kitty.name


# Writer

# Using the code from the previous exercise, add a setter method named #name=. Then, rename kitty
# to 'Luna' and invoke #greet again.

# Expected output:

# Hello! My name is Sophie!
# Hello! My name is Luna!


class Cat
  attr_accessor :name     #Changed from the getter method below to a one liner with both getter & setter
  def initialize(name)
    @name = name
  end

  # def name
  #   @name
  # end

  def greet
    puts "Hello! My name is #{name}!"
  end
end

kitty = Cat.new("Sophie")
kitty.greet
kitty.name = "Luna"
kitty.greet

# Accessor

# Using the code from the previous exercise, replace the getter and setter methods using Ruby shorthand.
# The code is already using `attr_accessor :name`