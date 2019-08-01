class Gadget

  def initialize
    @username = "User #{rand(1..100)}"
    @password = "topsecret"
    @production_number = "#{("a".."z").to_a.sample}"
  end
end

phone = Gadget.new
p phone.inspect
laptop = Gadget.new
p laptop.inspect
microwave = Gadget.new
p microwave.instance_variables

puts phone
puts laptop
puts microwave


puts phone.respond_to?(:class)

shiny = Gadget.new
flashy = Gadget.new

p shiny.object_id
p flashy.object_id

glossy = shiny

p glossy.object_id

p glossy == shiny
p shiny == flashy
p glossy == flashy










