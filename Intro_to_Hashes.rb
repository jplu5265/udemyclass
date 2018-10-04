empty_hash = {}
p empty_hash
p empty_hash.class

# Create hash and extract values from hashes by their keys
nfl_roster = {"Tom Brady" => "New England Patriots",
              "Tony Romo" => "Dallas Cowboys",
              "Rob Gronkowski" => "New England Patriots"} #case sensitive

nba_roaster = {"Celeveland cavaliers" => ["LeBron James", "Kevin Love", "Kyrie Irving"],
               "Golden State Warriors" => ["Stephen Curry", "Klay Thompson", "Kevin Duran"]}

p nfl_roster["Tony Romo"] #"Dallas Cowboys"
p nfl_roster["Rob Gronkowski"] #"New England Patriots"
p nba_roaster["Celeveland cavaliers"] #["LeBron James", "Kevin Love", "Kyrie Irving"]

p nfl_roster["Donald Duck"] #nil
p nfl_roster["Tom brady"] #nil, because of "b"rady

# Symbols as hash keys
=begin
p :name #a Symbol called name, they are light weight string
p :name.class
p :name.methods
p "name".methods #"name" is String
=end
=begin below is the regular way, better to use the short hands
person = {:name => "Boris",
          :age => 25,
          :handsome => true,
          :languages => ["Ruby", "Python", "JavaScript"]}
=end
person = {name: "Boris",
          age: 25,
          handsome: true,
          languages: ["Ruby", "Python", "JavaScript"]}

p person[:name]
p person[:languages]

# Convert symbols to String to_s, to_sym
p :age.to_s.class
p "age".to_sym.class
p "School bus".to_sym #avoid using spaces
p "school_bus".to_sym #this is much better
