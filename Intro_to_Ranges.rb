nums1 = -10...5 #including first and excluding last
nums2 = 1..5 #including first and last

p nums1.first
p nums1.last
p nums1.last(1)
p nums2.first
p nums2.last
p nums2.last(1)

#Alphabetical Ranges
alphabet = "a".."z"
p alphabet.first(5)
puts alphabet.first(5)
p alphabet.last(1)
puts alphabet.last(1)

p alphabet.size #get a nil
p nums1.size
p nums2.size

puts alphabet === "m"
puts nums1.include?(5)
puts nums1.include?(-5)
puts nums1 === 3
puts alphabet.include?("c")
