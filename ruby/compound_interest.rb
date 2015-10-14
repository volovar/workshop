# inputs
## principal amount
## rate
## years
## times interest compounds
#
# e
## rate divided by 100
## determine compounded interest A = P(1 + r/n) ** nt
## add principal and compounded interest
#
# outputs
## principal amount at interest rate and given years + times compounded
## principal + compounded interest
#
require "./get_input.rb"

def get_compounded_interest(principal, rate, years, times)
    rate = rate.to_f / 100
    amount = principal.to_f * (1 + (rate / times.to_i)) ** (times.to_i * years.to_f)
end

principal = get_input("What is the principal amount? ")
rate = get_input("What is the rate? ")
years = get_input("What is the number of years? ")
times_compounded = get_input("What is the number of times the interest is compounded per year? ")

total = get_compounded_interest(principal, rate, years, times_compounded)

puts "$#{principal} invested at #{rate} for #{years} years compounded #{times_compounded} per year is $%.2f." % total