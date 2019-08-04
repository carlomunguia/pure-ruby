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
  def yell
    "Who is the boss? I am the BOSS!?!"
  end

  def introduce
    "My name is #{name} and I'm a manager! Whoooo-hooo!"
  end
end

class Worker < Employee
  def clock_in(time)
    "Starting my shift at #{time}"
  end

  def yell
    "I'm working! I'm working!!"
  end
end

shugito = Manager.new("Shugito", 48)
iwata = Worker.new("Iwata", 36)

sally = Manager.new("Sally", 43)
p sally.introduce

bob = Worker.new("Bob", 32)
p bob.introduce


