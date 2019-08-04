class Employee

  attr_accessor :age
  attr_reader :name

  def initialize(name, age)
    @name = name
    @age = age
  end

  def introduce
    "Hello HUMAN! My name is #{name} and I am #{age} years old"
  end
end

class Manager < Employee

  attr_reader :rank

  def initialize(name, age, rank)
    super(name, age)
    @rank = rank
  end

  def yell
    "Who is the boss? I am the BOSS!?!"
  end

  def introduce
    result = super
    result += " - I'm also a manager!"
  end
end

sally = Manager.new("Sally", 42, "Senior Vice President")
p sally.age
p sally.introduce