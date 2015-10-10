#inputs
## age
#
# e
## check if user if 16 or older
#
# outputs
## You are / are not old enough to legally drive
#
puts "What is your age? "

while age = gets.chomp
    if age.class == String && age.to_i == 0
        puts "Please enter your age as a number: "
    elsif age.to_i <= 0
        puts "Please enter a positive age: "
    else 
        break
    end
end

message = age.to_i > 15 ? "are" : "are not"

puts "You #{message} old enough to legally drive."