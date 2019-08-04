class Cars

  attr_reader :maker

  def initialize(maker)
    @maker = maker
  end

  def drive
    "Vroom! Vroom!"
  end
end

class Firetruck < Cars
  def initialize(maker, sirens)
    super(maker)
    @sirens = sirens
  end

  def drive(speed)
    super() + "- Beep Beep! I'm driving at #{speed} miles per hour"
  end
end

ft = Firetruck.new("Subaru", 3)
p ft.drive(45)
