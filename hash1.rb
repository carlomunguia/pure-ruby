# HASHES 1

# DATA STRUCTURE OF KVP'S

empty_hash = {}

p empty_hash.class

# HASH & EXTRACT VALUES

nfl_roster = {"Tom Brady" => "New England Patriots",
              "Tony Romo" => "Dallas Cowboys",
              "Rob Gronkowski" => "New England Patriots"}

nba_roster = {"Cleveland Cavaliers" => ["Lebron James", "Kevin Love", "New Player"],
              "Golden State Warriors" => ["Stephone Phone", "Klay Klayton", "Theo Thornsby"]}

p nfl_roster["Tom Brady"]

#  SYMBOLS AS HASHES

p :name.methods.length

person = {:name => "Carlo", :age => "37", :languages => ["Ruby", "Python", "Javascript"]}

person = {

    name: 'Carlo',
    age: 37,
    languages: ["Ruby", "Python", "Javascript"]
}

# CONVERT SYMBOL TO STRINGS

p :age.to_s.class

p "age".to_sym

p "School Bus".to_sym