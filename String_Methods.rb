# The index and rindex method

fact = "I am very handsome."

p fact.index("I") #0
p fact.index("m") #3, first occurance of "m"
p fact.index("z") #nil
p fact.index("am") #2 first occurance
# second arg indicates starting index for the search
p fact.index("e", fact.index("e")+1) #capture the second occurance of "e"

# rindex reverse the search from the end of the string
p fact.rindex("e") #17
p fact.index("m") #3
p fact.rindex("m") #16

def custom_index(string, substring)
  #string.index(substring)
  return nil unless string.include?(substring)
  length = substring.length
  string.chars.each_with_index do |char, index|
    sequence = string[index, length]
    return index if sequence == substring
  end
end

p custom_index(fact, "am")

# The insert method
typo = "GeorgWashington"
typo.insert(5, "e ")
p typo

typo2 = "George Washingto"
typo2.insert(-1, "n!")
p typo2

# The squeeze method
sentence = "Thhe  aardvark  jummped  ovver the fence!"
puts sentence.squeeze
puts sentence.squeeze(" ") #not mutating original
puts sentence.squeeze! #use bang to mutate

def custome_squeeze(string)
  final = ""
  chars = string.split("")
  chars.each_with_index do |char, index|
    char == chars[index + 1] ? next : final << char
  end
  return final
end

p custome_squeeze(sentence) == sentence.squeeze

#The clear method -- mutates the original string

p "Blah blah blah".clear
word = "goodbye"
p word
word.clear
p word

# The delete method
# remove specified characters from the string, case sensitive
puts "Hello Worldd!".squeeze("d")
puts "Hello Worldd!".delete("ldr!")

def custom_delete(string, delete_characters)
  new_string = ""
  string.each_char do |char|
    unless  delete_characters.include?(char)
      new_string << char
    end
  end
  return new_string
end

p custom_delete("Hello World", "lrd")
