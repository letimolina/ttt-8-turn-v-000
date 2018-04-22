def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  input.to_i - 1
end
  
def move(board, index, character = "X")
  board[index] = character
end

def valid_move?(board, index)
  valid = nil
  if position_taken?(board, index) == true || !index.between?(0 , 8)
    valid = false
  elsif position_taken?(board, index) == false && index.between?(0 , 8)
    valid = true
  end
end
    
def position_taken?(board, index)
  taken = nil
  if board[index] == nil || board[index] == " " || board[index] == ""
   taken = false
  elsif board[index] == "X" || board[index] == "O"
   taken = true
  end
end

def turn(board)
 puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
 if valid_move?(board, index) == true
   move(board, index, character = "X")
   display_board(board)
 else 
   turn(board)
 end
end
# get input
# convert input to index
# if index is valid
#   make the move for input
# else
#   ask for input again until you get a valid input
# end
