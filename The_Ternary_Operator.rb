
if 1 < 2
  puts "Yes, it is!"
else
  puts "No, it's not!"
end

#The above lins of code is equvalent to the following:

puts 1 < 2 ? "Yes, it is!" : "No, it's not"

if "yes" == "yes"
  puts "The two are equal"
else
  puts "The two are not equal"
end

puts "yes" == "yes" ? "The two are equal" : "the two are not equal"

def even_or_odd(number)
  number.even? ? "It's even" : "It's odd"
end

puts even_or_odd(4)

pokemon = "Pikachu"

if pokemon == "Charizar"
  puts "Fireball!"
else
  puts "That is not Charizar"
end

def check_pokemon(pokemon)
  pokemon == "Charizar" ? "Fireball!" : "That is not Charizar"
end

p check_pokemon("Pikachu")
p check_pokemon("Charizar")
