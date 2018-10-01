sentence = "Hi, my name is Boris. There are spaces here!"

#use space as split
p sentence.split #same as sentence.split(" ")

p sentence.split(".")
p sentence.split(" i")

words = sentence.split(" ")
words.each {|word| puts word.length}

def longest_word(sentence)
  words = sentence.split(" ")
  word = ""
  length = 0
  words.each do |w|
    word, length = w, w.length if w.length > length
  end
  return "The longest word is #{word}, its length is #{length}"
end

p longest_word(sentence)
p longest_word("Bobby loves big scary kangaroos")
