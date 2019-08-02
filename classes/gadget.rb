class Gadget

  attr_accessor :username
  attr_reader :production_number
  attr_writer :password

  def initialize(username, password)
    @username = username
    @password = password
    @production_number = "#{("a".."z").to_a.sample}-#{rand(1..999)}"
  end

  def to_s
    "Gadget #{@production_number} has the username #{@username}.
     It is made from the #{self.class} and it has the ID #{self.object_id}"
  end
end

puts g1 = Gadget.new("rubyfan102", "programming123")

puts g2 = Gadget.new("misterprogrammer", "bestpassever")
g2.username = "Mrs.Programmer"



















