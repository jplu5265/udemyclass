# excercise

def evens_and_odds(numbers)
  odds, evens = numbers.partition{|num| num.odd?}
end

p evens_and_odds([4, 8, 15, 16, 23, 42])
p evens_and_odds([2, 4, 6])
p evens_and_odds([1, 3, 5])
