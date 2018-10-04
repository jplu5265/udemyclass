# The fetch method
menu = {burger: 3.99, taco: 5.96, chips: 0.5}

p menu[:burger]
p menu[:salad]

p menu.fetch(:burger)
#p menu.fetch(:salad) #this will triger an error
p menu.fetch(:salad, "Not Found!") #this is fine then

#Add a key value pair using [] and store method
menu[:sandwich] = 8.99
p menu
menu[:taco] = 2.99 #overide the value of taco
p menu

menu.store(:sushi, 24.99) #adding sushi
p menu
menu.store(:steak, 34.99) #adding steak
p menu[:steak]

#The .length and .empty? method
shopping_list = {bananas: 5, oranges: 10, carrots: 3, crackers: 15}
vegan_shopping_list = {}

p shopping_list.length #returns the number of pairs
p vegan_shopping_list.length
p shopping_list.empty?
p vegan_shopping_list.empty?

# The each method
capitals = {alabama: "Mongomery", alaske: "Juneau",
            arizona:"Phonix", arkansas: "Little Rock"}

capitals.each do |state, capital|
  puts "Querying hash..."
  puts "The capital of #{state} is #{capital}!"
end
=begin
capitals.each do |guess|
  #puts "Querying hash..."
  p guess #returns array of each of the key value pairs
  p guess[0]
  p guess[1]
end
=end

#exercise
hash = {a: 5, b: 2, c: 3, d: 5}
def value_count(hash, value)
    count = 0
    hash.each {|pair| count += 1 if pair[1] == value}
    count
end
p value_count(hash, 5)

#The each_key and each_value mwthods
salaries = {director: 100000, producer: 200000, ceo: 3000000, assistant: 200000}

salaries.each_key do |position|
  puts "EMPLOYEE RECORD:-----"
  puts "#{position}"
end

salaries.each_value {|salary| puts "The next employee earns #{salary}"}

def get_keys_from_hash(hash)
  keys = []
  hash.each_key {|key| keys << key}
  keys.uniq #.uniq is redundant, since keys are unique already
end

def get_values_from_hash(hash)
  values = []
  hash.each_value {|value| values << value}
  values.uniq
end

p get_keys_from_hash(salaries)
p get_values_from_hash(salaries)

#retrive keys or get_values_from_hash
shopping_list = {bananas: 5, oranges: 10, carrots: 3, crackers: 5}

p shopping_list.keys # returns keys as an array
p shopping_list.values #may have duplicate values
p shopping_list.values.uniq #remove duplicates
