
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  user_input.to_i - 1
end

def valid_move?(board, index)
  if index.between?(0,8)
    if !position_taken?(board, index)
      true
    end
  end

  def position_taken?(board, index)
  board[index] != " "
end

def move(board, index, current_player = "X")
  board[index] = current_player
end

def turn(board)
  puts "Please enter 1-9:"
input = gets.strip
input_to_index(index)
if input_to_index(index) == nil
   valid_move?(board, index)
   display_board
end
# if index is valid
#   make the move for index
#   show the board
# else
#   ask for input again until you get a valid input
# end
end
