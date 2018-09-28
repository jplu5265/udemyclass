#see also .each method
3.times { |number| puts "I am currently on loop number #{number}"}

5.times do |number| #variables exists local only
  square = number * number
  puts "The current number is #{number}, and its square is #{square}"
end
