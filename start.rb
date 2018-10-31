puts "This is the begining!"
=begin
load "end.rb"

puts "Alright, that was successful."

load "./end.rb" #./ --> current directory

if 8 > 5
  load "end.rb"
end
=end

require "./end.rb" #not working here, but works in command prompt env
require_relative "end.rb"
