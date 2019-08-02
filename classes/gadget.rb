class Gadget
  def initialize
    @username = "User #{rand(1..100)}"
    @password = "topsecret"
    @production_number = "#{("a".."z").to_a.sample}-#{rand(1..999)}"
  end

  def to_s
    "Gadget #{@production_number} has the username #{@username}.
     It is made from the #{self.class} and it has the ID #{self.object_id}"
  end

  def username
    @username
  end

  def production_number
    @production_number
  end
end

phone = Gadget.new
p phone.username
p phone.production_number
laptop = Gadget.new




















