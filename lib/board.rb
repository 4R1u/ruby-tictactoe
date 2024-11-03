# frozen_string_literal: true

require_relative 'spot'

# Represents the board on which the game will be played.
class Board
  def initialize
    @grid = Array.new(3) { Array.new(3, Spot.new) }
  end

  def view
    @grid.each_with_index do |row, index|
      view_row(row)
      puts '---|---|---' unless index == 2
    end
    nil
  end

  def mark_o(row, col)
    @grid[row][col].mark_o if @grid.dig(row, col)
  end

  def mark_x(row, col)
    @grid[row][col].mark_x if @grid.dig(row, col)
  end

  private

  def row_winner?(row, player)
    @grid[row].all?(player)
  end

  def col_winner?(col, player)
    @grid.map { |row| row[col].mark == player }
         .none?(false)
  end

  def diagonal_winner?(player)
    fslash_winner?(player) || bslash_winner?(player)
  end

  def bslash_winner?(player)
    diagonal = []
    3.times { |i| diagonal.push(@grid[i][i]) }
    diagonal.all?(player)
  end

  def fslash_winner?(player)
    diagonal = []
    3.times { |i| diagonal.push(@grid[i][2 - i]) }
    diagonal.all?(player)
  end

  def view_row(row)
    @grid[row].each_with_index do |spot, index|
      puts " #{spot} #{'|' unless index == 2}"
    end
    nil
  end
end
