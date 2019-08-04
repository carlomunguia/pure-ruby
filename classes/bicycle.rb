class Bicycle
  @@maker = "BikeTech"
  @@count = 0

  def self.description
    "Hi there, I'm a blueprint for Bicycles! USE ME to create a bicycle object!"
  end

  def self.count
    @@count
  end

  def maker
    @@maker
  end

  def initialize
    @@count += 1
  end
end

a = Bicycle.new
b = Bicycle.new
c = Bicycle.new

p Bicycle.count