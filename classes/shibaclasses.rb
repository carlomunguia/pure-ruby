class Employee

  attr_accessor :age
  attr_reader :name

  def initialize(name, age)
    @name = name
    @age = age
  end

  def introduce
    "Hello human my name is #{name} and I am #{age} years old"
  end
end

class Manager < Employee
end

class Worker < Employee
end

shugeru = Manager.new("Bob", 48)
iwata = Worker.new("Torres", 36)

p shugeru.class
p iwata.introduce

puts Manager.superclass
puts Worker.superclass

p Worker < Employee
p Worker < Kernel
p Worker < BasicObject

p Object < Manager