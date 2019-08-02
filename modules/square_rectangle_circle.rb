module Square
  def self.area(side)
    side * side
  end
end

module Rectangle
  def self.area(length, width)
    length * width
  end
end

module Circle

  SUPER_PI = 3.14159

  def self.area(radius)
    SUPER_PI * radius * radius
  end
end

puts Square.area(10)
puts Rectangle.area(10, 5)
puts Circle.area(29)




