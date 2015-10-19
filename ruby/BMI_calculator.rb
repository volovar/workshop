# inputs
## height in inches
## weight in pounds
#
# processes
## calculate bmi
## determine if bmi is between 18.5 and 25
#
# outputs
## if bmi is under 18.5 display "underweight" message
## if bmi is between 18.5 and 25 display "ideal weight" message
## if bmi is over 25 display "overweight" message
#
def calculate_bmi weight, height
    (weight.to_f / (height.to_f * height.to_f)) * 703
end

puts "What is your weight (in lbs)? "
while weight = gets.chomp
    if weight.class == String && weight.to_i == 0
        puts "Please enter a number: "
    elsif weight.to_i <= 0
        puts "Please enter a positive number: "
    else
        break
    end
end

puts "What is you height (in inches)?"
while height = gets.chomp
    if height.class == String && height.to_i == 0
        puts "Please enter a number: "
    elsif height.to_i <= 0
        puts "Please enter a positive number: "
    else
        break
    end
end

message = "You are within the ideal weight range"
bmi = calculate_bmi(weight, height)
if bmi < 18.5
    message = "You are underweight. You should see you doctor."
elsif bmi > 25
    message = "You are overweight. You should see your doctor."
end

puts "Your BMI is %.1f." % bmi
puts message