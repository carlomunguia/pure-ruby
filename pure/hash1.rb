# HASHES 1

# DATA STRUCTURE OF KVP'S

empty_hash = {}

p empty_hash.class

# HASH & EXTRACT VALUES

nfl_roster = { "Tom Brady" => "New England Patriots",
               "Tony Romo" => "Dallas Cowboys",
               "Rob Gronkowski" => "New England Patriots" }

nba_roster = { "Cleveland Cavaliers" => ["Lebron James", "Kevin Love", "New Player"],
               "Golden State Warriors" => ["Stephone Phone", "Klay Klayton", "Theo Thornsby"] }

p nfl_roster["Tom Brady"]

#  SYMBOLS AS HASHES

p :name.methods.length

person = { :name => "Carlo", :age => "37", :languages => ["Ruby", "Python", "Javascript"] }

person = {

    name: 'Carlo',
    age: 37,
    languages: ["Ruby", "Python", "Javascript"]
}

# CONVERT SYMBOL TO STRINGS

p :age.to_s.class

p "age".to_sym

p "School Bus".to_sym

# THE FETCH METHOD

menu = { burger: 3.99, taco: 5.96, chips: 0.50 }

p menu[:burger]

p menu.fetch(:burger)

p menu.fetch(:chips)
p menu.fetch(:salad, "Not found")

# ADD A KVP TO HASH WITH BRACKET SYNTAX OR .STORE METHOD

menu = { burger: 3.99, taco: 5.96, chips: 0.50 }

p menu[:sandwich] = 8.99
p menu

menu[:taco] = 2.99
p menu

menu.store(:sushi, 24.99)
p menu

# THE LENGTH AND EMPTY METHODS

shopping_list = { bananas: 5, oranges: 10, carrots: 3, crackers: 15 }
vegan_shopping_list = {}

p shopping_list.length
p shopping_list.empty?
p vegan_shopping_list.empty?

# .EACH METHOD ON A HASH

capitals = { alabama: "Montgomery", alaska: "Juneau", arizona: "Phoenix", arkansas: "Little Rock" }

capitals.each do |state, capital|
  puts "Querying hash.."
  puts "The capital of #{state} is #{capital}"
end

# THE .EACH KEY & EACH_VALUE METHODS

salaries = { director: 100000, producer: 200000, ceo: 300000 }

salaries.each_key do |position|
  puts "EMPLOYEE RECORD: -----"
  puts "#{position}"
end

salaries.each_value { |salary| puts "The next employee earns #{salary}" }

def get_keys_from_hash(hash)

  keys = []
  hash.each do |key, value|
    keys << key
  end
  keys
end

def get_values_from_hash(hash)

  values = []
  hash.each do |key, value|
    values << value
  end
  values
end

p get_keys_from_hash(salaries)
p get_values_from_hash(salaries)

# RETRIEVE KEY OR VALUES FROM HASH AS AN ARRAY

shopping_list = { bananas: 4, oranges: 10, carrots: 3, crackers: 5 }

p shopping_list.keys
p shopping_list.values.uniq

