module Purchasable
  def purchase(item)
    "#{item} has been purchased!"
  end
end

class Bookstore
  include Purchasable

  def purchase(item)
    "You bought a copy of #{item} at the bookstore!!"
  end
end

class Supermarket
  include Purchasable
end

class Cornermart < Supermarket
  def purchase(item)
    "Yay! This is such a dope #{item} from your cornermart!"
  end
end

p Bookstore.ancestors

bn = Bookstore.new
p bn.purchase("1984")

p Supermarket.ancestors

shoprite = Supermarket.new
p shoprite.purchase("Boo Berry")

p Cornermart.ancestors

quickstop = Cornermart.new
p quickstop.purchase("Airhead Xtremes")

