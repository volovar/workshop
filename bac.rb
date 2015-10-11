# inputs
## weight
## gender
## number of drinks
## alcohol by volume
## time since last drink
#
#e
## calculate BAC = (A * 5.14 / W * r) - .015 * H
## r is distribution ratio - 0.73 for men, 0.66 for women
#
# outputs
## BAC
## whether it's legal to drive
#
RATIO_MEN = 0.73
RATIO_WOMEN = 0.66
LEGAL_LIMIT = 0.08

def bac volume, weight, gender, hours
    ratio = ""

    if gender[0].upcase == "M"
        ratio = RATIO_MEN
    else
        ratio = RATIO_WOMEN
    end

    bac = (volume * 5.14 / weight * ratio) - 0.015 * hours
end

print "What is your weight? "

while weight = gets.chomp
    if weight.class == String && weight.to_i == 0
        puts "Please enter your weight as a number: "
    elsif weight.to_i <= 0
        puts "Please enter a positive weight: "
    else 
        break
    end
end

print "What is your gender? "
gender = gets.chomp

print "How many drinks have you had? "
number_of_drinks = gets.chomp

print "What is the volume of drinks you've had (in ounces)? "
drink_size = gets.chomp

print "How long has it been since your last drink? "
time_since_drink = gets.chomp

volume = number_of_drinks.to_i * drink_size.to_f
bac = bac(volume, weight.to_f, gender, time_since_drink.to_f)

legal_to_drive = bac >= LEGAL_LIMIT ? "not " : ""

puts "Your BAC is %.2f" % bac
puts "It is #{legal_to_drive}legal for you to drive."