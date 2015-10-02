METRIC_CONVERSION = 0.09290304

print "What is the length of the room in feet? "
length = gets.chomp

# if length.to_i.zero?
#     print "please enter a number"
#     length = gets.chomp
# end

print "What is the width of the room in feet? "
width = gets.chomp

area_feet = length.to_i * width.to_i
area_meters = area_feet * METRIC_CONVERSION

puts "You entered dimensions of #{length} feet by #{width} feet."
puts "The area is"
puts "#{area_feet} square feet"
puts "#{area_meters.round(3)} square meters"