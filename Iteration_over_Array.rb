# Using while and util loop

animals = ["Lion", "Zebra", "Baboon", "Cheetah", "Elephant", "Kangaroo"]

i = 0
while i < animals.length
  puts i
  puts animals[i]
  i += 1
end
=begin
i = 0
until i == animals.length
  puts i
  puts animals[i]
  i += 1
end
=end
# ===========================================================================
# break keyword
prizes = ["pyrite", "pyrite", "pyrite", "pyrite", "Gold", "pyrite", "pyrite",]

i = 0
while i < prizes.length
  current = prizes[i]
  if current == "Gold"
    puts "Yay! Found gold!"
    break
  else
    puts "#{current} is not gold!"
  end
  i += 1
end

numbers = [1, 2, 3, "Hello", 5, 6, 7, 8]

numbers.each do |num|
  if num.is_a?(Fixnum)
    puts "The square of #{num} is #{num ** 2}"
  else
    puts "That' not a valid number!"
    break
  end
end

#========================================================
# The next keyword

numbers = [1, 2, 3, "Hello", 5, 6, nil, 7, 8, []]

numbers.each do |num|
  #if !num.is_a?(Fixnum)
  unless num.is_a?(Fixnum)
    next
  else
    puts "The square of #{num} is #{num ** 2}"
  end
end

#=========================================================
# The reverse method

p "Hello".reverse
p [1, 2, 3].reverse
p ["A", "B", "c"].reverse

queue = [4, 8, 15, 16, 23, 42]
p queue
#without !, original array is unchanged
p queue.reverse
p queue
#with bang !, the original array is changed to reversed order
queue.reverse!
p queue

#==========================================================
# The sort method
numbers = [5, 13, 1, -2, 8]
words = ["caterpillar", "kangaroo", "apple", "zebra", "Zebra"]
p numbers
p words

p numbers.sort
#capital character come before lower case letters
p words.sort

p numbers
p words

#! mutated and changed the original array
p numbers.sort!
#capital character come before lower case letters
p words.sort!

p numbers
p words

p numbers.sort.reverse
p words.sort.reverse

#==================================================
# The concat method - mutate the original array
nums = [1, 2, 3]
p nums
p nums.concat([4, 5])
p nums

a = [1, 2, 3]
b = [4, 5, 6]
def custom_concat(arr1, arr2)
  #arr2.each{|elem| arr1 << elem}
  #return arr1
  arr1.concat(arr2)
end

#custom_concat(["a", "b", "c"], [1, 2, 3])
p custom_concat(a, b)
p a

#====================================================
# The max and min method
stock_prices = [723.99, 434.12, 84.7, 649.92]

p stock_prices.max
p stock_prices.min

fruits = ["apple", "kiwi", "banana", "watermelon"]
p fruits.max
p fruits.min

def custom_max(arr)
  #arr.max
  #arr.sort[-1]
  return nil if arr.empty?
  max = arr[0]
  arr.each do |value|
    max = value if value > max
  end
  return max
end

def custome_min(arr)
  #arr.min
  #arr.sort[0]
  return nil if arr.empty?
  min = arr[0]
  arr.each {|value| min = value if value < min}
  return min
end
numbers = [3, 9, 5, 7, 10, 1]
#p custom_max(stock_prices)
#p custome_min(fruits)
p custom_max(numbers)
p custome_min(numbers)
