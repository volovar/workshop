# inputs
## the number for a month
#
# processes
## match number to corresponding month name
#
# outputs
## the name of the matched month
#
MONTHS = {
    '1' => 'January',
    '2' => 'February',
    '3' => 'March',
    '4' => 'April',
    '5' => 'May',
    '6' => 'June',
    '7' => 'July',
    '8' => 'August',
    '9' => 'September',
    '10' => 'October',
    '11' => 'November',
    '12' => 'December'
}

puts "Please enter the number of the month: "

while month = gets.chomp
    if month.class == String && month.to_i == 0
        puts "Please enter a number: "
    elsif month.to_i <= 0
        puts "Please enter a positive number: "
    elsif month.to_i > 12
        puts "Please enter a number between 1 - 12: "
    else
        break
    end
end

name = MONTHS[month]

puts "The name of the month is #{name}."