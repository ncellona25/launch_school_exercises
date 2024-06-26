require 'pry'

WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] +
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] +
                [[1, 5, 9], [3, 5, 7]]
INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'

def prompt(msg)
  puts "=> #{msg}"
end

# rubocop: disable Metrics/AbcSize
def display_board(brd)
  system 'clear'
  puts "You're a #{PLAYER_MARKER}. Computer is a #{COMPUTER_MARKER}."
  puts ""
  puts "     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts "     |     |"
  puts ""
end
# rubocop: enable Metrics/AbcSize

def joinor(arr, delimeter=', ', word = 'or')
  case arr.size
  when 0 then ''
  when 1 then arr[0].to_s
  when 2 then arr.join(" #{word} ")
  else
    arr[-1] = "#{word} #{arr.last}"
    arr.join(delimeter)
  end
end

def initialize_board
  new_board = {}

  (1..9).each do |num|
    new_board[num] = INITIAL_MARKER
  end
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def player_places_piece!(brd)
  square = ''
  loop do
    prompt "Choose a square (#{joinor(empty_squares(brd))}):"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt("Sorry that is not a valid choice")
  end

  brd[square] = PLAYER_MARKER
end

def detect_threat(line, brd)
  if brd.values_at(line[0], line[1], line[2]).count(PLAYER_MARKER) == 2
    brd.select { |k, v| line.include?(k) && v == INITIAL_MARKER }.keys.first
  end
end

def computer_offense(line, brd)
  if brd.values_at(line[0], line[1], line[2]).count(COMPUTER_MARKER) == 2
    brd.select { |k, v| line.include?(k) && v == INITIAL_MARKER }.keys.first
  end
end

def computer_places_piece!(brd)
  square = nil
  WINNING_LINES.each do |line|
    square = computer_offense(line, brd)
    break if square
  end

  if !square
    WINNING_LINES.each do |line|
      square = detect_threat(line, brd)
      break if square
    end
  end

  if !square && brd[5] == INITIAL_MARKER
    square = 5
  elsif !square
    square = empty_squares(brd).sample
  end
  brd[square] = COMPUTER_MARKER
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(line[0], line[1], line[2]).count(PLAYER_MARKER) == 3
      return 'Player'
    elsif brd.values_at(line[0], line[1], line[2]).count(COMPUTER_MARKER) == 3
      return 'Computer'
    end
  end
  nil
end

wins_player = 0
wins_computer = 0
loop do
  board = initialize_board
  prompt "Would you like the computer to go first? (Y = Computer first, any other input = Player first)"
  initial_move = gets.chomp

  loop do
    display_board(board)
    prompt("You have #{wins_player} wins.  Computer has #{wins_computer} wins.")

    case initial_move.downcase
    when 'y'
      computer_places_piece!(board)
      break if someone_won?(board) || board_full?(board)

      player_places_piece!(board)
      break if someone_won?(board) || board_full?(board)
    else
      player_places_piece!(board)
      break if someone_won?(board) || board_full?(board)

      computer_places_piece!(board)
      break if someone_won?(board) || board_full?(board)
    end
  end

  display_board(board)

  if someone_won?(board)
    wins_player += 1 if detect_winner(board) == 'Player'
    wins_computer += 1 if detect_winner(board) == 'Computer'
    prompt "#{detect_winner(board)} won!"
  else
    prompt "It's a tie!"
  end

  break if wins_player == 5 || wins_computer == 5
end

prompt "Thanks for playing Tic-Tac-Toe!  Goodbye!"
