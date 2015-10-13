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
# def convert_to_fahrenheit temp
#     (temp.to_i * 9 / 5) + 32
# end

# def convert_to_celsius temp
#     (temp.to_i - 32) * 5 / 9
# end

print "Your choice: "

while temp_selection = gets.chomp
    if temp_selection.upcase == "C"
        puts "Hi"
        break
    else
        print "Please choose 'C' or 'F'."
        break
    end
end