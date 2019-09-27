class Triangle
  attr_accessor :a, :b, :c
  
  def initialize(a,b,c)
    @sides << a 
    @sides << b 
    @c << c
  end 
  
  def kind
    if x == 0 || y == 0 || z == 0
      raise TriangleError
    elsif x + y <= z || x + z <= y || y + z <= x
      raise TriangleError
    elsif x == y && y == z
      kind = :equilateral
    elsif x == y && x != z || y == z && y != x || x == z && x != y
      kind = :isosceles
    else
      kind = :scalene
    end
  end
end
