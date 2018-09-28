#not popular & not recommanded to use for loop

numbers = [3, 5, 7]

# numbers.each {|num| puts num} #num is temp & local only
# num does not exist afterward

for num in numbers
  puts num
end
puts num #num becomes the last element 7

rng = 1..10
rng.each do |rng_number|
  puts rng_number
end
#rng_number do not exist afterward

for rng_number in rng
  puts rng_number
end

p rng_number
