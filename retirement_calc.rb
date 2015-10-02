print "What is your current age? "
current_age = gets.chomp

print "At what age would you like to retire? "
retire_age = gets.chomp

years_until_retire = retire_age.to_i - current_age.to_i

current_year = Time.new.year
retirement_year = current_year + years_until_retire

if years_until_retire <= 0
    puts "You can retire!"
else
    puts "You have #{years_until_retire} years left until you can retire."
    puts "It's #{current_year}, so you can retire in #{retirement_year}"
end