# Take a look at the following code:

class Pet
  attr_reader :name

  def initialize(name)
    @name = name.to_s
  end

  def to_s
    "My name is #{@name.upcase}."
  end
end

name = 42
fluffy = Pet.new(name)
name += 1
puts fluffy.name
puts fluffy
puts fluffy.name
puts name

# What output does this code print? Think about any undesirable effects occurring due to the invocation on line 20.
# Fix this class so that there are no surprises waiting in store for the unsuspecting developer.

# The code will print 

# puts fluffy.name    => "FLUFFY"
# puts fluffy         => "My name is FLUFFY."
# puts fluffy.name    => "FLUFFY"
# puts name           => FLUFFY