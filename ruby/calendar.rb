# inputs
## the number for a month
#
# processes
## match number to corresponding month name
#
# outputs
## the name of the matched month
#
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

name = case month.to_i
    when 1 then 'January'
    when 2 then 'February'
    when 3 then 'March'
    when 4 then 'April'
    when 5 then 'May'
    when 6 then 'June'
    when 7 then 'July'
    when 8 then 'August'
    when 9 then 'September'
    when 10 then 'October'
    when 11 then 'November'
    when 12 then 'December'
end

puts "The name of the month is #{name}."