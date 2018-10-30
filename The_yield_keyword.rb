def pass_control
  puts "This is inside the method!"
  yield #pass control from method to the block
  puts "Now I'm back inside the method"
end

pass_control { puts "Now I'm inside the block!"} #here's the block

pass_control do
  puts "This is line 1 of my block"
  puts "yay, still inside the block!"
end

def who_am_i
  adjective = yield
  puts "I am very #{adjective}"
end

who_am_i { "handsome"}
who_am_i { "talented"}

def multiple_pass
  puts "Inside the method"
  yield
  puts "Back inside the method"
  yield
end

multiple_pass { puts "Now I'm inside the block"}

result = multiple_pass {"Blah blah blah"}
p result
