#.each_char
"Hello world".each_char {|char| puts char}

name = "Boris"
p name.split("") # returns an array of each character

p name.chars # exactly the same

letters = name.chars
letters.each {|letter| puts "#{letter} is awesome!"}

#============================
# join method on Array
names = ["Joe", "Moe", "Bob"]

p names.join
p names.join("-")

#def custom_join(array, delimiter = "")
#  array.join(delimiter)
#end

def custom_join(array, delimiter = "")
  string = ""
  last_index = array.length - 1
  array.each_with_index do |elem, index|
    string << elem
    string << delimiter unless index == last_index
  end
  return string
end

p custom_join(names) #JoeMoeBob
p custom_join(names, "-") #Joe-Moe-Bob
p custom_join(names, "!--!") == names.join("!--!")

#=========================================
# count method on a string

puts "Hello World".count("h") #0, case sensitive
puts "Hello World".count("l") #3
puts "Hello World".count("lo") #5

puts "An amazing aardvark appeared".count("Aa")

def custome_count(string, search_characters)
  #string.count(search_characters)
  count = 0
  string.each_char {|char| count += 1  if search_characters.include?(char)} 
  return count
end

p custome_count("An amazing aardvark appeared", "Aa")
