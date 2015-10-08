# inputs
## currency (euros) being exchanged
## exchange rate (to dollars)

# e
## convert inputted amount to dollars at the given conversion rate

# outputs
## initial amount (of euros)
## exchange rate
## amount in dollars

def convert_to_dollars (amount, rate)
    (amount.to_f * rate.to_f) / 100
end

print "How many euros are you exchanging? "
initial_amount = gets.chomp

print "What is the exchange rate? "
exchange_rate = gets.chomp

new_amount = convert_to_dollars(initial_amount, exchange_rate)

puts "#{initial_amount} euros at an exchange rate of #{exchange_rate} is $%.2f U.S. dollars" % new_amount