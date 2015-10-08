# inputs
## principal
## rate of interest (as percent)
## number of years

# e
## calculate interest: A = P(1 + rt)

# outputs
## display years, rate and worth of investment

def calculate_interest(principal, roi, time)
    rate = roi.to_f / 100
    amount = principal.to_f * (1 + rate * time.to_f)

    amount
end

def get_input(text)
    print(text)
    input = gets.chomp
    input
end

principal = get_input("Enter the principal: ")
roi = get_input("Enter the rate of interest: ")
years = get_input("Enter the number of years: ")

total = calculate_interest(principal, roi, years)

puts "After #{years} years at #{roi}, the investment will be worth $%.2f." % total