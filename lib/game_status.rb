# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],
  [4,5,6],
  [7,8,9],
  [0,4,7],
  [1,5,8],
  [2,6,9],
  [0,5,9],
  [2,5,7]
]

def won?(board)
  WIN_COMBINATIONS.each{ |win_combination|
    if board[win_combination[0]] == "X" && board[win_combination[1]] == "X" && board[win_combination[2]] == "X"
      return win_combination
    else
      false
    end
  }
end
board = ["X", "X", "X", " ", " ", " ", " ", " ", " "]
puts won?(board)
