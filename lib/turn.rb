def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  index = user_input.to_i
  index -= 1
  return index
end

def valid_move?(board, index)
  def position_taken?(array, ind)
    if array[ind] == " " || array[ind] == "" || array[ind] == nil
      false
    else
      true
    end
  end

  def on_board?(integer)
    if integer.between?(0, 8) == true
     true
    else
     false
    end
  end

  if (position_taken?(board, index)) == false && (on_board?(index) == true)
    true
  else
    false
  end
end

def move(board, index, character = "X")
  board[index] = character
  return board
end

def turn (board)
  puts "Please enter 1-9:"
  integer = gets.chomp
  index = input_to_index(user_input)
  if valid_move?(board, index) == true
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
end
