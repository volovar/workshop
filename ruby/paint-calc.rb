# input
## length
## width

# e
## find area based on length + width
## divide area by gallon coverage constant

# output 
## number of gallons needed
## to cover area

require './calculate_area.rb'

def calculate_coverage(area)
    (area.to_f / 350).ceil
end

GALLON_COVERAGE = 350

print "What is the length? "
length = gets.chomp

print "What is the width? "
width = gets.chomp

area_feet = calculate_area(length, width)
area_meters = convert_to_metric(area_feet)

total_gallons = calculate_coverage(area_feet)

puts "You will need to purchase #{total_gallons} of paint to cover #{area_feet} square feet"