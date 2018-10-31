squares_lambda = lambda { |number| number ** 2 }
squares_proc = Proc.new { |number| number ** 2 }

p [1, 2, 3].map(&squares_proc)
p squares_proc.call(5)

p [1, 2, 3].map(&squares_lambda)
p squares_lambda.call(5)

some_proc = Proc.new { |name, age| "Your name is #{name}, you're #{age} years old."}

p some_proc.call("Boris", 25)
p some_proc.call("Boris") #given wrong numbers of arg, no error
p some_proc.call()

#lambda require correct number of args, proc does not
some_lambda = lambda { |name, age| "Your name is #{name}, you're #{age} years old."}

p some_lambda.call("Boris", 25)
#p some_lambda.call("Boris") #given wrong numbers of arg, has error
#p some_lambda.call() #given wrong numbers of arg, has error

def diet
  status = lambda { return "You gave in" }
  status.call
  "You completed the diet!"
end

def diet_proc
  status = Proc.new { return "You gave in" }
  status.call
  "You completed the diet!"
end

result1 = diet
p result1
result2 = diet_proc
p result2
