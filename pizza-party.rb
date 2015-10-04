# inputs:
## number of people
## number of pizzas
## number of slices per pizza

# e
## multiply pizza by slices
## divide slices by people, slices must be whole number

# outputs
## display number of people and pizzas
## how many slices each person gets
## any leftover slices

print "How many people? "
number_of_people = gets.chomp

print "How many pizzas do you have? "
number_of_pizzas = gets.chomp

print "How many slices per pizza? "
slices_per_pizza = gets.chomp

total_slices = number_of_pizzas.to_f * slices_per_pizza.to_f

slices_per_person = total_slices / number_of_people.to_f

puts slices_per_person.round