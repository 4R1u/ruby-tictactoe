# frozen_string_literal: true

require './lib/spot'
require './lib/board'

board = Board

def input_coord
  row = 3
  puts 'A value from 0 to 2'
  row = gets.chomp.to_i until (0..2).cover?(row)
  row
end
