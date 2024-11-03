# frozen_string_literal: true

require_relative 'spot'

# Represents the board on which the game will be played.
class Board
  def initialize
    @grid = Array.new(3) { Array.new(3, Spot.new) }
  end

  private

  def view_row(row)
    @grid[row].each_with_index do |spot, index|
      puts " #{spot} #{'|' unless index == 2}"
    end
  end
end
