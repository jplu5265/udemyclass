=begin
problem #1
ints = [1, 2, 3, 4, 5]
sum = 0

ints.each_with_index do |num, i|
  product = num * i
  sum += product
end

p sum
=end

arr = [-1, 2, 1, 2, 5, 7, 3]
def print_if(array)
  array.each_with_index do |element, index|
    if index > element
      puts "Index #{index} is greater than the element #{element}"
      puts "Their production is #{element * index}"
    end
  end
end

print_if(arr)
