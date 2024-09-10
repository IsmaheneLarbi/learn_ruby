class Point
  attr_reader :x, :y
  def initialize(x, y)
    @x = x
    @y = y
  end
end

pt1 = Point.new(3, 6)
pt2 = Point.new(6, 5)

def manhattan_dist(pt1, pt2)
  (pt2.y - pt1.y).abs + (pt2.x - pt1.x).abs
end

puts manhattan_dist(pt1, pt2)
