class ConvenienceStore
  include Enumerable
  attr_reader :snacks

  def initialize
    @snacks = []
  end

  def add_snack(snack)
    snacks << snack
  end

  def each
    snacks.each do |snack|
      yield snack
    end
  end
end

bodega = ConvenienceStore.new
bodega.add_snack("Lime Soda")
bodega.add_snack("Crybabies")
bodega.add_snack("Jolly Ranchers")

p bodega.snacks
p bodega.map { |snack| snack.upcase }
p bodega.select { |snack| snack.downcase.include?("j") }

p bodega.sort


