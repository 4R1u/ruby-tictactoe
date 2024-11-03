# frozen_string_literal: true

# Represents one of the squares in the grid.
class Spot
  attr_reader :mark

  def initialize
    @mark = ' '
  end

  def mark_x
    @mark = 'X'
  end

  def mark_o
    @mark = 'O'
  end

  def empty
    @mark = ' '
  end
end
