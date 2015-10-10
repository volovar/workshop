#inputs
## age
#
# e
## check if user if 16 or older
#
# outputs
## You are / are not old enough to legally drive
#
require "./get_input.rb"

age = get_input("What is you age? ")
message = age.to_i > 15 ? "are" : "are not"

puts "You #{message} old enough to legally drive."