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
  o = mark_square('O', board) until o
end
