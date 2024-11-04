# frozen_string_literal: true

require 'colorize'

# Represents one of the squares in the grid.
class Spot
  attr_reader :mark

  def initialize
    @mark = :' '
  end

  def mark_x
    if @mark == :' '
      @mark = :X
      true
    else
      false
    end
  end

  def mark_o
    if @mark == :' '
      @mark = :O
      true
    else
      false
    end
  end

  def empty
    @mark = :' '
  end

  def colored_mark
    case @mark
    when :X
      'X'.colorize(color: :blue, background: :white)
    when :O
      'O'.colorize(color: :red, background: :white)
    else
      ' '.colorize(background: :white)
    end
  end
end
