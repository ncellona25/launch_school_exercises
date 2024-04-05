class Move
  attr_reader :value
  include Comparable
  VALUES = ['rock', 'paper', 'scissors']
  WINS = {
    'rock' => ['scissors', 'lizard'],
    'paper' => ['rock', 'spock'],
    'scissors' => ['lizard', 'paper'],
    'lizard' => ['paper', 'spock'],
    'spock' => ['rock', 'scissors']
  }

  def initialize(value)
    @value = value
  end

  def <=>(other)
    if @value == other.value
      0
    elsif WINS[@value].include?(other.value)
      1
    else
      -1
    end
  end

  def to_s
    @value
  end
end

class Player
  attr_accessor :move, :name, :score

  @@end_goal = 10
  def self.end_goal
    @@end_goal
  end

  def initialize
    set_name
    self.score = 0
  end

  def increment_score
    self.score += 1
  end
end

class Human < Player
  def set_name
    n = ''
    loop do
      puts "What's your name?"
      n = gets.strip.squeeze(' ')
      break unless n.empty?
      puts "Sorry, must enter a valid name."
    end
    self.name = n
  end

  def choose
    choice = ''
    loop do
      puts "Please choose rock, paper, or scissors:"
      choice = gets.chomp.downcase
      break if Move::VALUES.include?(choice)
      puts "Sorry, invalid choice entered."
    end
    self.move = Move.new(choice)
  end
end

class Computer < Player
  def set_name
    self.name = ["R2D2", "Hal", "Chappie", "Sonny", 'Number 5'].sample
  end

  def choose
    self.move = Move.new(Move::VALUES.sample)
  end
end

class RPSGame
  attr_accessor :human, :computer

  def initialize
    @human = Human.new
    @computer = Computer.new
  end

  def display_welcome_message
    puts "Welcome to Rock, Paper, Scissors #{human.name}! First to ten points wins."
  end

  def display_goodbye_message
    puts "Thanks for playing Rock, Paper, Scissors.  Goodbye!"
  end

  def display_moves
    puts "#{human.name} chose #{human.move}  ---  #{computer.name} chose #{computer.move}"
  end

  def display_winner
    # case human.move <=> computer.move
    # when 1
    #   puts "#{human.name} won this round!"
    #   human.increment_score
    # when -1
    #   puts "#{computer.name} won this round!"
    #   computer.increment_score
    # when 0
    #   puts "It's a tie!"
    # end
    if human.move > computer.move
      puts "#{human.name} won this round!"
      human.increment_score
    elsif human.move < computer.move
      puts "#{computer.name} won this round!"
      computer.increment_score
    else
      puts "It's a tie!"
    end
  end

  def display_current_score
    puts "#{human.name} has a score of #{human.score}."
    puts "#{computer.name} has a score of #{computer.score}."
  end

  def play_again?
    answer = nil
    loop do
      puts "Would you like to play again? (y/n)"
      answer = gets.chomp
      break if ['y', 'n'].include?(answer.downcase)
      puts "Sorry, must enter 'y' or 'n'."
    end
    answer.downcase == 'y'
  end

  def play
    display_welcome_message

    until human.score == 10 || computer.score == 10 do
      human.choose
      computer.choose
      display_moves
      display_winner
      sleep(1)
      display_current_score
    end
    # break unless play_again?
    display_goodbye_message
  end
end

RPSGame.new.play
=begin
#Finished:
implemented the score instance variable in Player class
<=> operator in the Move class
changed display a bit
changed gameplay loop to end at a score of 10

#BUG**
computer is incrementing every round (FIXED: <=> in Move class had bug where @value == other instead of 
       '@value == other.value'.  was always returning -1 because I was comparing ivar with a whole separate instance)

#GOALS: 
Clean up the display!  (Choose how I want the game to look in the terminal)
Implement rules text and prompt user if they want it displayed
Allow user to input the desired goal of points
Loop validation for play_again?
Clear terminal after each round

=end