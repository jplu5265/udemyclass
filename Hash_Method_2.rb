# Create Has with default values
#fruit_prices = {banana: 1.05}
#p fruit_prices[:orange] #nil

#fruit_prices = Hash.new(0) #0 will be default value when key does not exist
fruit_prices = Hash.new("Not found") #"Not found" will be default value when key does not exist

fruit_prices[:banana] = 1.05
fruit_prices[:orange] = 0.69
fruit_prices[:kiwi] = 10.99

p fruit_prices[:banana]
p fruit_prices[:steak] #0, or "Not found"

fruit_prices.default = "Whoops! Not exist here!" #reassign the default value
p fruit_prices[:steak] #"Whoops! Not exist here!"

#Convert Hash to Array and vice versa to_a and to_h
spice_girls = {scary: "Melanie Brown",
               sporty: "Melanie Chrisholm",
               baby: "Emma Bunton",
               ginger: "Geri Halliwell",
               posh: "Victoria Backham"}

p spice_girls.to_a.flatten

power_rangers = [
  [:red, "Jason"], [:black, "Zack"],
  [:blue, "Billy"], [:yellow, "Trini"],
  [:pink, "Kimberly"]
]

puts power_rangers.to_h

#The .sort and .sort_by methods on a Hash (returns an array)
pokemon = {squirtle: "Water", bulbasaur: "Grass", charizard: "Fire"}

p pokemon.sort #returns array of sorted key, .sort sort by keys
p pokemon.sort.reverse

puts

p pokemon.sort_by {|pokemon, type| pokemon} #same as pokemon.sort
p pokemon.sort_by {|pokemon, type| type} #sort by values "type"
p pokemon.sort_by {|pokemon, type| type}.reverse

#The .key? and .value? methods on a Hash
cars ={toyota: "camry", chevolet: "aveo", ford: "F-150", kia: "soul"}

puts cars.key?(:ford) #same as .has_key? (deprecated)
puts cars.key?(:honda)
puts cars.value?("camry") #same as .has_value? (deprecated)
puts cars.value? "accord" #would also work without ()

#Hashes as Method Arguments <-- VIP ===========================================
def calculate_total_1(price, tip, tax)
  tax_amount = price * tax
  tip_amount = price * tip
  price + tip_amount + tax_amount
end

puts calculate_total_1(24.99, 0.18, 0.07)
puts calculate_total_1(0.18, 0.07, 24.99) #forgot the arg order and mess around

#bill = {price: 24.99, tip:0.18, tax:0.07}
bill = {tax: 0.07, price: 24.99, tip:0.18} #swaps the order still works
def calculate_total_2(info) #info is a hash
  tax_amount = info[:price] * info[:tax]
  tip_amount = info[:price] * info[:tip]
  info[:price] + tax_amount + tip_amount
end
p calculate_total_2(bill)
p calculate_total_2({tax:0.05, tip: 0.30, price: 9.99})
p calculate_total_2(tax:0.05, tip: 0.30, price: 9.99) #not using the {} will also work
p calculate_total_2 tax:0.05, tip: 0.30, price: 9.99 #this will also works

#The .delete method
superheros = {spiderman: "peter Parker", superman: "Clark Kent",
              batman: "Bruce Wayne"}
p superheros
removed = superheros.delete(:spiderman) #remove key and value pair
p superheros
p removed #only the value is stored

#The .select and .reject methods on a hash
recipe = {sugar: 5, flour: 10, salt: 2, pepper: 4}

high = recipe.select {|ingredient, teaspoons| teaspoons >= 5} #keep >= 5
p high
low = recipe.reject {|ingredient, teaspoons| teaspoons >= 5} #remove >= 5
p low
odds = recipe.select {|ingredient, teaspoons| teaspoons.odd?} #keep odds
p odds

includes_s = recipe.select {|ingredient, teaspoons| ingredient.to_s.include?("s")}
p includes_s

#The .merge method to combine hashes
market = {garlic: "3 cloves", tomatoes: "5 batches", milk: "10 gallons"}
kitchen = {bread: "2 loaves", yogurt: "20 cans", milk: "100 gallons"}

p market.merge(kitchen) #not mutable, use ! to mutate
p kitchen.merge(market) #notice the difference from above

def custom_merge(hash1, hash2)
  new_hash = hash1.dup
  hash2.each {|key, value| new_hash[key] = value}
  new_hash
end

p custom_merge(market, kitchen)
