# inputs
## make a selection: c or f
## enter a temperature (opposite of choice above)
#
# processes
## convert to given temperature type
#
# outputs
## temperature in chosen type
#
def convert_temp(temp, conversion_type)
    if conversion_type == "C"
        (temp - 32) * 5 / 9
    elsif conversion_type == "F"
        (temp * 9 / 5) + 32
    else
        0101
    end
end

puts "Press C to convert from Fahrenheit to Celsius. \nPress F to convert from Celsius to Fahrenheit."

temp_name = "Temperature"
temp_selection = gets.chomp.upcase
puts "Your choice: #{temp_selection} \n\n"

if temp_selection == "C"
    temp_name = "Fahrenheit"
elsif temp_selecion == "F"
    temp_name = "Celsius"
end

print "Please enter the temperature in #{temp_name}: "
temp = gets.chomp.to_i

new_temp = convert_temp(temp, temp_selection)

puts "The temperature in Celsius is #{new_temp}."