class Player
  def play_game
    rand(1..100) > 50 ? "Winner" : "Loser"
  end
end

bob = Player.new
carlo = Player.new

def carlo.play_game
  "Winner! Mwa Ha Ha!"
end

p carlo.singleton_methods
p carlo.singleton_class
p bob.singleton_class