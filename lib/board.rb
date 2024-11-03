# frozen_string_literal: true

require_relative 'spot'

# Represents the board on which the game will be played.
class Board
  def initialize
    @grid = Array.new(3) { Array.new(3, Spot.new) }
  end

  private

  def view_row(row)
    puts "#{@grid[row][0]} | #{@grid[row][1]} | #{@grid[row][2]}"
  end
end
