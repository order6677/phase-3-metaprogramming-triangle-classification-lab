class Triangle
  # write code here
  attr_reader :x, :y, :z
  def initialize(x,y,z)
    @x = x
    @y = y
    @z = z
  end
  
  def kind
    if x==y && y==z
      :equilateral
    elsif x==y || y==z || x==z
      :isosceles
    else
      :scalene
    end
  end

  def greater_than_zero?
    [x, y, z].all?(&:positive?)
  end

  def triangle_inequality?
    x + y > z && x + z > y && y + z > x
  end

  def validate_triangle
    raise TriangleError unless greater_than_zero? && triangle_inequality?
  end

  class TriangleError < StandardError
  end

end


