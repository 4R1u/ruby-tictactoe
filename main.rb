# frozen_string_literal: true

require './lib/spot'
require './lib/board'
require 'colorize'

def input_coords
  input = [-1, -1]
  input = gets.chomp.split until (0..2).cover?(input[0].to_i) && (0..2).cover?(input[1].to_i)
  input
end

def mark_square(player, board)
  puts 'Enter row and column, separated by a space:'
  coords = input_coords
  case player
  when 'X'
    board.mark_x(coords[0].to_i, coords[1].to_i)
  when 'O'
    board.mark_o(coords[0].to_i, coords[1].to_i)
  end
end

def play_round(board)
  puts "#{'X'.colorize(color: :blue)}'s turn:"
  x = mark_square('X', board) until x
  board.view
  return 'X' if board.winner?(:X)

  puts "#{'O'.colorize(color: :red)}'s turn:"
  o = mark_square('O', board) until o
  board.view
  return 'O' if board.winner?(:O)

  nil
end

def play_game(board)
  result = play_round(board) until result
  case result
  when 'X'
    result = 'X'.colorize(color: :blue)
  when 'O'
    result = 'O'.colorize(color: :red)
  end
  puts "#{result} is the winner."
end

loop do
  play_game(Board.new)
  puts 'Would you like to play again?[Y] '
  break unless gets.chomp == 'Y'
end
