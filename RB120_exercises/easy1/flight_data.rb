# Consider the following class definition:

class Flight
  attr_accessor :database_handle

  def initialize(flight_number)
    @database_handle = Database.init
    @flight_number = flight_number
  end
end

# There is nothing technically incorrect about this class, but the definition may lead to problems in the future.
# How can this class be fixed to be resistant to future problems?

# The problem lies in the fact the setter and getter methods for @database_handle are public so it is easily
# accessible to everyone.  If someone ends up changing @database_handle in different code, it could break the code.  