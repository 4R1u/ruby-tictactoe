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
  puts 'Enter column'
  col = input_coord
  case player
  when 'X'
    board.mark_x(row, col)
  when 'O'
    board.mark_o(row, col)
  end
end

def play_round(board)
  puts 'X\'s turn:'
  x = mark_square('X', board) until x
  board.view
  return 'X' if board.winner?('X')

  puts 'O\'s turn:'
  o = mark_square('O', board) until o
  board.view
  return 'O' if board.winner?('O')

  nil
end

def play_game(board)
  result = play_round(board) until result
  puts "#{result} is the winner."
end

loop do
  play_game(Board.new)
  puts 'Would you like to play again?[Y] '
  break unless gets.chomp == 'Y'
end
