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

  def check_row_for_win(row)
    if @grid[row][0].mark == @grid[row][1].mark &&
       @grid[row][1].mark == @grid[row][2].mark
      @grid[row][0].mark
    end
  end

  def check_col_for_win(col)
    if @grid[0][col].mark == @grid[1][col].mark &&
       @grid[1][col].mark == @grid[2][col].mark
      @grid[0][col].mark
    end
  end

  def check_diagonally_for_win
    check_fslash_for_win || check_bslash_for_win
  end

  def check_bslash_for_win
    if @grid[0][0].mark == @grid[1][1].mark &&
       @grid[1][1].mark == @grid[2][2].mark
      @grid[0][0].mark
    end
  end

  def check_fslash_for_win
    if @grid[0][2].mark == @grid[1][1].mark &&
       @grid[1][1].mark == @grid[2][0].mark
      @grid[0][2].mark
    end
  end

  def view_row(row)
    @grid[row].each_with_index do |spot, index|
      puts " #{spot} #{'|' unless index == 2}"
    end
    nil
  end
end
