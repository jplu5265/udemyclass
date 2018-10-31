=begin
today = Time.new
now = Time.now
p today
p now
p today.class

last_may = Time.new(2015, 5, 18, 7, 30, 12)
p last_may.class

today = Time.now
p today
p today.month
p today.day
p today.year
puts
p today.hour
p today.min
p today.sec
puts
p today.yday

sometime = Time.new(2016, 5, 29)
p sometime.yday #day of the year
p sometime.wday #day of the week

birthday = Time.new(1991, 8, 11)
p birthday.monday? #works on weekdays: tuesday?, wednesday?...
p birthday.tuesday?
p birthday.wednesday?
p birthday.thursday?
p birthday.friday?
p birthday.saturday?
p birthday.sunday?
p birthday.dst? #dst? --> day light saving time

start_of_year = Time.new(2016, 1, 1)
p start_of_year
p start_of_year - 180 #seconds
p start_of_year + (60 * 60 * 24 * 45) #adds 45 days

def find_day_of_year_by_number(number)
  current_date = Time.new(2016, 1, 1)
  one_day = 60 * 60 * 24
  until current_date.yday == number
    current_date += one_day
  end
  current_date
end

p find_day_of_year_by_number(150)
p find_day_of_year_by_number(25)
p find_day_of_year_by_number(366)

birthday = Time.new(2016, 4, 12)
summer = Time.new(2016, 6, 21)
independence_day = Time.new(2016, 7, 4)
winter = Time.new(2016, 12, 21)

puts birthday < summer
puts independence_day > winter
puts birthday == Time.new(2016, 4, 12, 1)

puts independence_day.between?(birthday, winter)
puts birthday.between?(Time.new(2016, 1, 1), winter)

someday = Time.new(2000, 2, 15)
p someday.yday
p someday.wday
puts someday.to_s
puts someday.ctime
p someday.to_a #convert to array: [0, 0, 0, 15, 2, 2000, 2, 46, false, "Eastern Standard Time"]

#ruby strftime <-- details here: https://apidock.com/ruby/DateTime/strftime
today = Time.now
p today.strftime("%B %d, %Y")

=end

require 'time' #need this for below
puts Time.parse("2016-01-01")
puts Time.strptime("03-04-2000", "%m-%d-%Y")
