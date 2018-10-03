#The any? and all? method on an array
p [1, 3, 5, 7, 2].any? do |number|
  number.even? #any element is an even? --> true
end

p [1, 3, 5, 7, 9].any? {|n| n.even?} #any element is an even? --> false

p [1, 3, 5, 7].all? {|n| n.odd?} #all elements are odd? --> true
p [1, 3, 5, 7, 8].all? {|n| n.odd?} #all elements are odd? --> false

#The find and detect method (they are identical)
words = ["dictionary", "refrigerator", "platpus", "microwave"]
p words.select {|word| word.length > 8} #returns all matches
p words.find {|word| word.length > 8} # returns only the first match
p words.detect {|word| word.length > 8} # returns only the first match

lottery = [4, 8, 15, 16, 23, 42]
result = lottery.find do |number| #same as lottery.detect
  number.odd?
end

p result # returns the first match --> 15

# The uniq method --> removes duplicates
numbers = [1, 2, 3, 2, 7, 7, 8, 9, 1]
p numbers
p numbers.uniq #original array remains the same
p numbers
p numbers.uniq! #use ! to mutate original array
p numbers

def custom_uniq(array)
  #array.uniq
  final = []
  array.each {|element| final << element unless final.include?(element)}
  final
end
p numbers.uniq == custom_uniq(numbers)

#The compact method --> removes all nil elements from an array
p [1, nil, 2, 3, nil, false, false, 4].compact
p [nil].compact
sports = ["Baseball", nil, "Football", nil, nil, "Soccer"]
p sports.compact
p sports
sports.compact!
p sports

def custom_compact(array)
  #array.compact
  final = []
  array.each { |element| final << element unless element.nil? }
  final
end
p custom_compact(sports)

# The inject and reduce method (they are identical)
result = [10, 20, 30, 40].inject(0) do |previous, current|#0 is the starting value
  puts "The previous value is #{previous}"
  puts "The current value is #{current}"
  previous + current
end
puts result

product = [3, 4, 5, 6, 7].reduce(1) do |previous, current| #same as inject
  puts "The previous value is #{previous}"
  puts "The current value is #{current}"
  previous * current
end
puts product

# The flatten method --> strip down nested array and returns a single dimention array
registrations = [
                ["Bob", ["Dan"], "Jack"],
                ["Rick", ["Susan", "Molly"]],
                ["Pierce", "Sean", "George"]
]

a, b, c = registrations
p a
p b
p c
p registrations.flatten #use ! bang to mutate original array
p registrations
p registrations.flatten!
p registrations

# The zip method
names = ["Bo", "Moe", "Joe"]
reg = [true, false, false]
p names.zip(reg) #[["Bo", true], ["Moe", false], ["Joe", false]]

p [1, 2, 3].zip([4, 5, 6], ["A", "B", "C"]) #combines 3 arrays

def custom_zip(arr1, arr2)
  final = []
  arr1.each_with_index do |value, index|
    final << [value, arr2[index]]
  end
  final
end
p custom_zip(names, reg)
p custom_zip([1, 2, 3], ["A", "B", "C"])

#The sample method
flavors = ["Chocolate", "Vanilla", "Strawberry", "Rum Raisin"]
puts flavors.sample # returns a random sample element from the array
p flavors.sample(2) # returns an array of tow random sampls in it
p flavors.sample(10)

# Multiply an array
p [1, 2, 3] * 5 #[1, 2, 3, 1, 2, 3, 1, 2, 3, 1, 2, 3, 1, 2, 3]
p ["A", "B", "C"] * 4

def custom_multiply(array, number)
  #return array * number
=begin
  final = []
  i = 0
  while i < number
    array.each {|element| final << element}
    i += 1
  end
    final
=end
  result = []
  number.times {array.each {|elem| result << elem}}
  result
end
p custom_multiply([5, 1, 2], 5)
