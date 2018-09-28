
def fizzbuzz(number)
  #IF the number is devisible by 3, output Fizz
  #If the number is devisible by 5, output Buzz
  #If the number is divisible by BOTH 3 and 5, output FizzBuzz
  i = 1
  #until i > number
  while i <= number
    #if i % 3 == 0 && i % 5 == 0
    if i % 15 == 0
      puts "The number #{i} is divisible by both 3 and 5, you got 'FizzBuzz'"
    elsif i % 3 == 0
      puts "The number #{i} is divisible by 3, you got 'Fizz'"
    elsif i % 5 == 0
      puts "The number #{i} is divisible by 5, you got 'Buzz'"
    end
    i += 1
  end
end

fizzbuzz(45)
