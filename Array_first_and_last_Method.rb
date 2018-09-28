ints = [1, 3, 5, 7, 15, 21, 18, 6]

def custom_first(arr, num = 0)
  return arr[0] if num == 0
  return arr[0, num]
end

def custom_last(arr, num = 0)
  return arr[-1] if num == 0
  return arr[-num..-1] #notice -num
end

p custom_first(ints)
p custom_first(ints, 1)
p custom_last(ints)
p custom_last(ints, 1)

p custom_first(ints, 2)
p custom_last(ints, 2)

p ints

#push, insert method and shovel operator <<
locations = ["House", "Airport", "Bar"]
p locations
locations.push("Restaurant") #add to the very end
p locations
locations << "Restroom" << "Saloon" #add to the very end
p locations

locations.insert(1, "Lab", "Cafe") #insert after index provided
p locations

#pop method --> remove elements
last_item = locations.pop #remove the very last item and returns it
p locations
p last_item
removed_items = locations.pop(2) #returns array
p removed_items
remove_item = locations.pop #returns element
p remove_item

#shift and unshift method
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
p arr
extract = arr.shift #remove the very first element
p arr
p extract
extract = arr.shift(3)
p arr
p extract
arr.unshift(23, 25) #add into the very first item
p arr

#comparing arrays
a = [1, 2, 3]
b = [1, 2, 3, 4]
c = [3, 2, 1]
d = [1, 2, 3]

p a == b #false
p a == c #false
p a == d #true
p a != b #true
p a != d #false

e = ["Skittles", "Starbursts", "Snickers"]
f = ["Skittles", "Starbursts", "snickers"] #one lower case here
p e == f #false because of case sensitive

#the Spaceship operator <=>
p 5 <=> 5 #return 0
p 5 <=> 10 #return -1
p 5 <=> 3 #return 1
p 5 <=> [1, 2, 3] #return nil

p [3, 4, 5] <=> [3, 4, 5] #return 0
p [3, 4, 5] <=> [nil, 4, 5] #return nil
p [1, 2, 4] <=> [1, 2, 10] #return -1
p [1, 2, 4] <=> [1, 2, 3] #return 1

#.to_a method
letters_range = "A".."T"
p letters_range
letters_array = letters_range.to_a
p letters_array
p letters_array[10]
numbers_range = 415..450
p numbers_range
numbers_array = numbers_range.to_a
p numbers_array
p numbers_array[2..5]
p numbers_array.length

#is_a? method
p numbers_array.is_a?(Array)
