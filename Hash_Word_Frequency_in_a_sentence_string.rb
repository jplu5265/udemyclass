sentence = "Once upon a time in a land far far far away"

#Return a hash where the keys will represent the words in the string
#and the values will represent how many time the key occurs

=begin need further works
def word_count(string)
    result = {}
    words = string.split(" ")
      unless result.include?(element)
        result.store(element, freq + 1)
      else
        result[element] = freq + 1
      end
    end
    result
end
=end

def word_count(string)
  words = string.split(" ")
  count = Hash.new(0)
  words.each {|word| count[word] += 1}
  count
end
p word_count(sentence)
