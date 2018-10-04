# Union - Combine arrays and exclude duplicates
p [1, 1, 2, 3, 3] | [3, 4, 4, 5] #| operator --> [1, 2, 3, 4, 5]
p [1, 1, 2, 3, 3] | [3, 4, 4, 5] | [4, 4, 5, 6, 7] #[1, 2, 3, 4, 5, 6, 7]

a = [1, 1, 2, 3, 3, 4, 7, 9]
b = [3, 4, 4, 5, 8, 10]

def custom_union(arr1, arr2)
=begin
  result = []
  arr1.each {|elem| result << elem unless result.include?(elem)}
  arr2.each {|elem| result << elem unless result.include?(elem)}
  result
=end
  arr1.dup.concat(arr2).uniq.sort #.dup is essential to avoid mutation on arr1
end

p custom_union(a, b)
p a
p b

# Remove array items that exist in another array
p [1, 1, 2, 2, 3, 3, 3, 3, 4, 5] - [2,3] #[1, 1, 4, 5]
a = [1, 1, 2, 2, 3, 3, 3, 3, 4, 5]
b = [1, 4, 5]

def custom_subtraction(arr1, arr2)
  final = []
  arr1.each {|elem| final << elem unless arr2.include?(elem)}
  final
end
p custom_subtraction(a, b)
p custom_subtraction(a, b) == (a - b)

# Array Intersection with the Ampersand symbol
p [1, 1, 2, 3, 4, 5] & [1, 4, 5, 8, 9] & [5, 4, 10, 11] #[4, 5]

a1 = [1, 1, 2, 3, 4, 5]
a2 = [1, 4, 5, 8, 9]

def custom_intersection(arr1, arr2)
  final = []
  arr1.uniq.each {|elem| final << elem if arr2.uniq.include?(elem)}
  final
end

p custom_intersection(a1, a2)
p custom_intersection(a1, a2) == (a1 & a2)
