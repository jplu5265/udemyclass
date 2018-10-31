def talk_about(name, &myprc)
  puts "Let me tell you ablou #{name}."
  myprc.call(name)
end

good_things = Proc.new do |name|
  puts "#{name} is a genius!"
  puts "#{name} is a jolly good fellow!"
end

bad_things = Proc.new do |name|
  puts "#{name} is a dolt!"
  puts "I can't stand #{name}!"
end

talk_about("Boris", &good_things)
talk_about("Leslie", &good_things)
talk_about("Brock", &bad_things)
