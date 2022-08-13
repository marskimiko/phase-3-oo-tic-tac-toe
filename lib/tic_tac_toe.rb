class TicTacToe
  WIN_COMBINATIONS = [
    [0,1,2],
    [3,4,5],
    [6,7,8],
    [0,3,6],
    [1,4,7],
    [2,5,8],
    [0,4,8],
    [6,4,2]
  ]

  def initialize()
    # @board = ["X", "X", "X", "X", "X", "X", "X", "X", "X"]
    @board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
  end

  def display_board

    @board.each_with_index  do |cell, index|
      if index % 3 === 0
        print " " + cell
      elsif index % 3 === 1
        print " | " + cell + " | "
      elsif index % 3 === 2
        print cell + " \n"
        puts "-----------" if index < @board.length - 1
      end  
    end
  end

  def input_to_index(user_input)
    ui = user_input.to_i
    ui -= 1
    
    return ui
  end
  
  def move(index, token = "x")
    @board[index] = token 
  end

  def position_taken?(index)
    # if at a given index the cell is not " " then return true
    #  if it is " " then return false
    @board[index] != " "
  end

  def valid_move?(index)
    #check if the position is not taken
    # check if the position is between 0-8
   !position_taken?(index) && index >= 0 && index <= 8
  end
  
end
