# Assigning default value 1 to international_code and value 917
# to area_code 
def make_phone_call(number, international_code = 1, area_code = 917)
  puts "Calling #{international_code}-#{area_code}-#{number}"
end

make_phone_call(1234567, 5, 999)
make_phone_call(1234567, "7", "454")
make_phone_call(1234567)
make_phone_call("555-5555", 4)
make_phone_call("555-5555", 3, 646)
