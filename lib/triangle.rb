require "pry"

class Triangle
  def initialize(side_1, side_2, side_3)
    @sides = [side_1, side_2, side_3]
  end

  def kind
    sorted_sides = @sides.sort { |a, b| a <=> b }
    if (sorted_sides.min(2).sum <= sorted_sides.max || sorted_sides.min <= 0)
      raise TriangleError
    elsif (sorted_sides[0] == sorted_sides[1])
      (sorted_sides[1] == sorted_sides[2]) ? :equilateral : :isosceles
    elsif (sorted_sides[1] == sorted_sides[2])
      :isosceles
    else
      :scalene
    end
  end

  class TriangleError < StandardError
  end
end
