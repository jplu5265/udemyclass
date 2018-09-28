#checks for oject the class it belongs to
p 1.class
p 3.14.class
p 9999999999999999999999999999999999999999999.class
p true.class
p false.class
p nil.class
p [1, 2, 3].class
p "Sring".class

puts
puts

puts 1.is_a?(Integer)
puts "ABC".is_a?(String)

#arr = 5
arr = ["a", "c", "e", "k", "h", "e", "e"]
if arr.is_a?(Array)
  arr.each {|e| puts e}
end
