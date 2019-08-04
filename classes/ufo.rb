class Ufo

  attr_reader :cattle, :probe, :human_enlightenment
  attr_accessor :cattle, :human_enlightenment
  attr_writer :human_enlightenment

  def initialize(probe, cattle, human_enlightenment)
    @probe = probe
    @cattle = cattle
    @human_enlightenment = human_enlightenment
  end

  def abducting_cattle(probe, cattle, abduction)
    abduction = []
    abduction << cattle << probe
    abduction
  end

  def phone_home
    "Hello humans - we come in peace! But we need your #{cattle} by using our #{probe}! Our main goal is to make sure humans achieve human enlightenment - here is your #{human_enlightenment}!"
  end
end

night = Ufo.new("Titanium Edition", "Spotted Cow", "40% achieved")
p night.phone_home

p abduction