# The .include? method

p "Hello".include?("l")
#again, it's case sensitive
p "Hello".include?("h")

numbers = [1, 2, 3, 4, 5]

p numbers.include?(2)
p numbers.include?(10)

#=============================
# The index and find_index method are identical

colors = ["Red", "Blue", "Green", "Red"]

p colors.index("Green")
p colors.index("Red") # return index of first occurance
p colors.find_index("Blue") # exactly the same as index method
p colors.index("Orange") # return nil if not found

#==============================
#The .select method
grades = [80, 95, 13, 76, 28, 39]

matches = grades.select do |number|
  #number >= 75
  number.even?
end

p matches

words = ["level", "selfless", "racecar", "dinosaur"]
palindromes = words.select{|word| word == word.reverse}

p palindromes

#================================
# The .reject method
animals = ["cheetah", "cat", "lion", "elephant", "dog", "cow"]
select_results = animals.select{|animal| animal.include?("c")}
reject_results = animals.reject{|animal| animal.include?("c")}
p select_results
p reject_results

#=================================
# Unpack a multidimentional array
users = [["Bob", 25, "Male"], ["Susan", 48, "Female"], ["Larry", 62, "male"]]

p users[0]
p users[1][2] # returns "Female"

# unpacking

bob, susan, larry = users
p bob
p susan
p larry

=begin
bob, susan = users #larry is indefined
p bob
p susan
p larry #gives error
=end

#===================================
# The partition method
foods = ["Steak", "Vegetables", "Steak Burger", "kale",
          "Tofu", "Tuna Steaks"]

good = foods.select{|food| food.include?("Steak")}
bad = foods.reject{|food| food.include?("Steak")}

p good
p bad
#to split off, same results with above
good, bad = foods.partition{|food| food.include?("Steak")}
p good
p bad
