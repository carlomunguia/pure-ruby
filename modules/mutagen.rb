module Purchasable
  def purchase(item)
    "#{item} has been purchased!"
  end
end

class Bookstore
  include Purchasable
end

class Supermarket
  include Purchasable
end

class Cornermart < Supermarket
end

barnes_and_noble = Bookstore.new
p barnes_and_noble.purchase("Atlas Dabbed")

shoprite = Supermarket.new
p shoprite.purchase("Ice Cream Dream")

quickstop = Cornermart.new
p quickstop.purchase("Grape Shark")



