# frozen_string_literal: true

require 'colorize'
require_relative 'spot'

# Represents the board on which the game will be played.
class Board
  def initialize
    @grid = Array.new(3) { Array.new(3) { Spot.new } }
  end

  def view
    puts '|---|---|---|'.colorize(color: :black, background: :white)
    @grid.each_with_index do |_row, index|
      view_row(index)
      puts "\n"
      puts '|---|---|---|'.colorize(color: :black, background: :white)
    end
    nil
  end

  def mark_o(row, col)
    @grid[row][col].mark_o if @grid.dig(row, col)
  end

  def mark_x(row, col)
    @grid[row][col].mark_x if @grid.dig(row, col)
  end

  def winner?(player)
    horizontal_winner?(player) ||
      vertical_winner?(player) ||
      diagonal_winner?(player)
  end

  def reset
    @grid = Array.new(3) { Array.new(3, Spot.new) }
  end

  def full?
    @grid.each { |row| row.each { |item| return false if item.mark == :' ' } }
    true
  end

  private

  def horizontal_winner?(player)
    rows_won = []
    3.times { |row| rows_won.push(@grid[row].all? { |spot| spot.mark == player }) }
    rows_won.any?(true)
  end

  def vertical_winner?(player)
    cols_won = []
    3.times do |col|
      cols_won.push(@grid.map do |row|
        row[col].mark == player
      end.none?(false))
    end
    cols_won.any?(true)
  end

  def diagonal_winner?(player)
    fslash = []
    3.times { |i| fslash.push(@grid[i][2 - i].mark) }
    bslash = []
    3.times { |i| bslash.push(@grid[i][i].mark) }
    fslash.all?(player) || bslash.all?(player)
  end

  def view_row(row)
    print '|'.colorize(color: :black, background: :white)
    @grid[row].each_with_index do |spot, _index|
      print ' '.colorize(color: :black, background: :white)
      print spot.colored_mark
      print ' '.colorize(color: :black, background: :white)
      print '|'.colorize(color: :black, background: :white)
    end
    nil
  end
end
