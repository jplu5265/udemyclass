
fruits = ["apple", "Orange", "Grape", "Banana"]
p fruits

#appending new element to the end
fruits[fruits.length] = "Lemon"
p fruits

#.length same as .size
p fruits.size
p fruits.count("apple") #count occurance

#empty? and nil? mrthod
puts fruits.empty?
puts fruits.nil?
p letters = ("a".."j").to_a
character = letters[25] #returns nil
p character.nil?

#first and last method
p letters.first #return first element
p letters.last #return last element
p letters.first(1) #return first element as an array
p letters.first(3) #return first 3 elements as an array
p letters(2) #return last two elements as an array

fruits[fruits.length + 3] = "Rasberry" #filled in with nil
p fruits

fruits[3, 2] = ["cateloupe", "Dragonfruit"]
p fruits

fruits[0..2] = ["Blackberry", "Orange", "Pears"]
p fruits

fruits[0..3] = ["Blah"] #will replace 0 with "Blah" and remove 1, 2, and 3
p fruits
