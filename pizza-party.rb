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

slices_per_person = (total_slices / number_of_people.to_f).floor

leftover_slices = (total_slices - (slices_per_person * number_of_people.to_i)).to_i

puts "#{number_of_people} people with #{number_of_pizzas} pizzas."
puts "Each person gets #{slices_per_person} pieces of pizza."
puts "There are #{leftover_slices} leftover pieces."