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
  for each combi in WIN_COMBINATIONS{
    if board[combi[0]] == "X" && board[combi[1]] == "X" && board[combi[2]] == "X"
      puts combi
  }
end
board = ["X", "X", "X", " ", " ", " ", " ", " ", " "]
puts won?(board)
