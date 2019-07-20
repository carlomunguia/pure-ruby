# SORT / SORT BY METHODS

pokemon = {squirtle: "Water", bulbasaur: "Grass",
           charizard: "Fire"}

p pokemon.sort
puts pokemon.sort

puts
p pokemon.sort_by {|pokemon, type| type}

# THE KEY? & VALUE? METHODS

cars = {toyota: "camry", chevrolet: "aveo",
        ford: "F-150", kia: "soul"}

puts cars.key?(:kia)
puts cars.value?("soul")

# HASHES AS METHOD ARGUMENTS

bill = {tip: 0.18, tax: 0.07, price: 24.99, }

def calculate_total_1(price, tip, tax)
  tax_amount = price * tax
  tip_amount = price * tip
  price + tip_amount + tax_amount
end

def calculate_total_2(info)
  tax_amount = info[:price] * info[:tax]
  tip_amount = info[:price] * info[:tip]
  info[:price] + tax_amount + tip_amount
end

p calculate_total_2(bill)

# THE DELETE METHOD

superheroes = {spiderman: "Peter Parker", superman: "Clark Kent", batman: "Bruce Wayne"}

superheroes.delete(:spiderman)

p superheroes


# THE SELECT & REJECT METHODS ON HASH'S

recipe = {sugar: 5, flour: 10, salt: 2, pepper: 4}

high = recipe.select {|ingredient, teaspoons| teaspoons >= 5}

p high

low = recipe.reject {|ingredient, teaspoons| teaspoons >= 5}

p low


# THE MERGE METHOD

market = {garlic: "3 cloves", tomatoes: "5 batches", milk: "10 gallons"}
kitchen = {bread: "2 loaves", yogurt: "20 cans", milk: "100 gallons"}

p kitchen.merge(market)
p kitchen

def custom_merge(hash1, hash2)
  new_hash = hash1.dup
  hash2.each do |key, value|
    new_hash[key] = value
    new_hash
  end
end

p custom_merge(market, kitchen)
p market
p kitchen

sentence = "Once upon a time in a land far far away"

def word_count(string)

  sep = string.split(" ")
  count = Hash.new(0)

  sep.each do |word|
    count[word] += 1
  end
  count
end

p word_count(sentence)


def tipi (fire)

  altar = {half_moon: sand, tipi_poles: wood
      }
  fire = []

  fire