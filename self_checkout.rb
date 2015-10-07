# prompt for items x 3
# calculate subtotal
# calculate tax at 5.5%
# display subtotal, tax, and total

# inputs
## price of 3 items

# e
## calculate subtotal
## calculate tax

# outputs
## subtotal
## tax
## total

def convert_to_cents(dollars)
    dollars * 100
end

def get_tax(amount)
    amount * TAX_RATE
end

def item(number=1)
    item_array = []

    number.times do |i|
        i = i + 1
        
        print('Enter price of item %i: ' % i)
        price = gets.chomp.to_f

        print('Enter the quantity of item %i: ' % i)
        quantity = gets.chomp.to_i

        item_array << [quantity, price]
    end

    total = 0

    item_array.each do |item|
        total = total + (item[0] * item[1])
    end

    total
end

TAX_RATE = 0.055

subtotal = item(3)
tax_amount = get_tax(subtotal)
total = subtotal + tax_amount

puts "Subtotal: $%.2f" % subtotal
puts "Tax: $%.2f" % tax_amount
puts "Total: $%.2f" % total