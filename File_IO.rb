=begin
File.open("novel.txt").each do |line|
  puts line
end

File.open("myFirstFile.txt", "a") do |file|
  file.puts "I'm creating this from Ruby!"
  file.write "No line break here!"
  file.puts "Pretty cool!"
end
=end

File.rename("myFirstFile.txt", "somethingBetter.txt")
if File.exist?("myFirstFile.txt")
  File.delete("myFirstFile.txt")
end
