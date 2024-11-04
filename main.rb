# frozen_string_literal: true

require './lib/spot'
require './lib/board'

def input_coord
  row = 3
  row = gets.chomp.to_i until (0..2).cover?(row)
  row
end

def mark_square(player, board)
  puts 'Enter row:'
  row = input_coord
  put 'Enter column'
  col = input_coord
  case player
  when 'X'
    board.mark_x(row, col)
  when 'O'
    board.mark_o(row, col)
  end
end

def play_round(board)
  x = mark_square('X', board) until x
  return true if board.winner?('X')

  o = mark_square('O', board) until o
  board.winner?('O')
end

def play_game(board)
  result = play_round(board) until result
end
