# Using the following code, determine the lookup path used when invoking cat1.color. 
# Only list the classes that were checked by Ruby when searching for the #color method.

class Animal
  attr_reader :color

  def initialize(color)
    @color = color
  end
end

class Cat < Animal
end

class Bird < Animal
end

cat1 = Cat.new('Black')
cat1.color
p Cat.ancestors
# stops at Animal class after checking Cat class 

# Using the following code, determine the lookup path used when invoking cat1.color.
# Only list the classes and modules that Ruby will check when searching for the #color method.

class Animal
end

class Cat < Animal
end

class Bird < Animal
end

cat1 = Cat.new
cat1.color
p Cat.ancestors

# This will now check Cat and every superclass of Cat

# Using the following code, determine the lookup path used when invoking bird1.color.
# Only list the classes or modules that were checked by Ruby when searching for the #color method.

module Flyable
  def fly
    "I'm flying!"
  end
end

class Animal
  attr_reader :color

  def initialize(color)
    @color = color
  end
end

class Cat < Animal
end

class Bird < Animal
  include Flyable
end

bird1 = Bird.new('Red')
bird1.color

# classes & modules checked: Bird -> Flyable -> Animal