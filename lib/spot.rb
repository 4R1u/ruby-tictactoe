# frozen_string_literal: true

# Represents one of the squares in the grid.
class Spot
  attr_reader :mark

  def initialize
    @mark = ' '
  end

  def mark_x
    if @mark == ' '
      @mark = 'X'
      true
    else
      false
    end
  end

  def mark_o
    if @mark == ' '
      @mark = 'O'
      true
    else
      false
    end
  end

  def empty
    @mark = ' '
  end
end
