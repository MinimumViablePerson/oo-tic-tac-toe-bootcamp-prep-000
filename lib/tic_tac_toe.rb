class TicTacToe
  
  WIN_COMBINATIONS = [
    [0,3,6], # First column
    [1,4,7], # Second column
    [2,5,8], # Third column
    [0,1,2], # First row
    [3,4,5], # Second row
    [6,7,8], # Third row
    [0,4,8], # Left-to-right diagonal
    [2,4,6]  # Right-to-left diagonal
  ]
  
  def initialize
    # Initialize object with an empty board
    @board = Array.new(9, " ")
  end

  def current_player
    turn_count % 2 == 0 ? "X" : "O"
  end

  def turn_count
    @board.count{|token| token == "X" || token == "O"}
  end

  def display_board
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts "-----------"
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts "-----------"
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end
end