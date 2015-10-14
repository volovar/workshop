# inputs
## order amount
## state
#
# e
## determine if state is WI or not
## if WI determine tax at 5.5%
## if tax, add it to the amount
#
# outputs
## if WI display tax
## if WI display subtotal
## display total
#
require "./get_input.rb"

TAX_RATE = 5.5

def get_tax(amount)
    amount = amount.to_f
    rate = TAX_RATE / 100
    tax = amount * rate
end

amount = get_input("What is the order amount? ")
state = get_input("What is the state? ")
total = amount.to_f

if state.upcase == "WI" or state.upcase == "WISCONSIN"
    tax = get_tax(amount)
    total = total + tax

    puts "The subtotal is $%.2f." % amount
    puts "The tax is $%.2f." % tax
end

puts "The total is $%.2f." % total