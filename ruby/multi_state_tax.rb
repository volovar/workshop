# inputs
## order of amount
## state that user lives in
#
# processes
## determine if user is in WI IL
## if WI get county
## in WI calculate tax by county - 0.005 for Eau Claire 0.004 for Dunn
## Illinois has 8% tax
## other states have none
#
# outputs
## tax (if there is any)
## total
#
IL_TAX = 0.08
WI_TAX = 0.05
EC_TAX = 0.005
D_TAX = 0.004

class String
    def abbr
        self[0,2]
    end
end

def calculate_tax(amount, tax)
    amount.to_f * tax
end

tax = 0.0

puts "What is the order amount? "
while amount = gets.chomp
    if amount.class == String && amount.to_i == 0
        puts "Please enter a number: "
    elsif amount.to_i <= 0
        puts "Please enter a positive number: "
    else
        break
    end
end

puts "What state do you live in? "
state = gets.chomp

if state.abbr.upcase == 'WI'
    puts "What county do you live in? "
    county = gets.chomp

    if county.abbr.upcase == 'EA'
        new_tax = WI_TAX + EC_TAX
    elsif county.abbr.upcase == 'DU'
        new_tax = WI_TAX + D_TAX
    else
        new_tax = WI_TAX
    end

    tax = calculate_tax(amount, new_tax)
elsif state.abbr.upcase == 'IL'
    tax = calculate_tax(amount, IL_TAX)
end

total = amount.to_f + tax

if tax
    puts "The tax is $%.2f." % tax
end

puts "The total is $%.2f." % total