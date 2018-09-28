# Array in Ruby, Array is mutable
#p []
#p [].class
#creating an array
numbers = [4, 8, 15, 16, 23, 42]
puts numbers[0] #pull out item index 0, return only an item
p numbers[2, 4] #starting index 2 and pull out 4 items, return an array
p numbers[2..4] #starting index 2 up to index 4 including 4
p numbers[2...4] #starting index 2 up to index 4 excluding 4

toys = ["Teddy bear", "Super soaker", "board game"]
#puts toys
#p toys
#print toys
#.values_at method, will return an array
puts toys.values_at(0)
p toys.values_at(0, 1)
p toys.values_at(0, 1, 1) #two times index 1
p toys.values_at(1, -1) #index 1 and the last index one
p toys.values_at(0, 1, 3, 0, 100) #will return nil for out of bound indexes

#.slice method
p numbers.slice(3) #same as numbers[3]
p numbers(100)
p numbers(2, 3) #same as numbers[2, 3]
p numbers(4..6) #same as numbers[4..6]

things = [4, true, "Hello", 10.99]
registrations = [true, true, false, true]
p registrations

puts registrations[0]

#Arrays in array
students = [["Boris", 25, true],
            ["Sally", 23, true],
            ["Ingrid", 31, false]]

puts students[0]

#short hand of creating array of strings
names = %w[Jack Jill John James]
puts names

#creating array with Array.new method
p Array.new(3, true)
myArray = Array.new(3, [1, 2, 3])
p myArray.length
p myArray[0]
myArray[0] = "Hello World"
p myArray
p myArray[4] #out of bound, this will get nil
p myArray[myArray.length - 1] #the last element
p myArray[-1] #the last element
#access single element
p myArray.fetch(0)
# p myArray.fetch(5) this will get an index out of bound error

p myArray.fetch(5, "Not Found!") #default to show when out of bound
