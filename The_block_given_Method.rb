def pass_control_on_condition
  puts "Inside the method"
  #if block_given?
  #  yield
  #end
  yield if block_given?
  puts "Back inside the method"
end

pass_control_on_condition
pass_control_on_condition {puts "Inside the block"}

#yielding with arguments
def speak_the_truth(name)
  yield name if block_given?
end

speak_the_truth("Boris") { |name| puts "#{name} is brilliant!"}
speak_the_truth("Sarah") { |name| puts "#{name} is incredible!"}

def number_evaluation(num1, num2, num3)
  puts "Inside the method"
  yield(num1, num2, num3)
  #puts "Back inside the method!"
end

sum = number_evaluation(5, 10, 15) { |num1, num2, num3| num1+num2+num3}
product = number_evaluation(5, 10, 15) { |num1, num2, num3| num1*num2*num3}
p sum
p product
