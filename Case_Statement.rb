def rate_my_food(food)
  case food
  when "Steak"
    "Pass the steak sauce!"
  when "Suishi"
    "Great choice! My favorite food"
  when "Tacos", "Burritos", "Quesadillas"
    "Cheesy and filling! The perfect combination"
  when "Tofu", "Brussel Sprouts"
    "Disgusting! Yuck!"
  else
    "I don't know about that food"
  end
end

puts rate_my_food("Steak")
puts rate_my_food("Suishi")
puts rate_my_food("Quesadillas")

def calculate_school_rate(grade)
  case grade
  when 90..100 then "A"
  when 80..89 then "B"
  when 70..79 then "C"
  when 60..69 then "D"
  else "F"
  end
end

puts calculate_school_rate(97)
puts calculate_school_rate(55)
puts calculate_school_rate(87)
