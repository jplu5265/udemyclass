=begin
Every body mentioned this way
to have multiline comments.

The =begin and =end must be at the beginning of the line or
it will be a syntax error.
=end


shirts = ["striped", "plain white", "plaid", "band"]
ties = ["polka dot", "solid color", "boring"]

shirts.each do |shirt|
  ties.each do |tie|
    puts "OPTION: A #{shirt} shirt and a #{tie} tie."
  end
end

#each_with_index
colors = ["Red", "Blue", "Green", "Yellow"]
colors.each_with_index do |color, index|
  puts "Moving on to index number #{index}"
  puts "The current color is #{color}"
end

fives = [5, 10, 15, 20, 25]
fives.each_with_index do |number, i|
  puts "PRODUCT of #{number} and its index #{i} is #{number * i}"
end
