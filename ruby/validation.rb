# inputs
## password
#
# e
## compare given password to stored password
#
# outputs
## display "I don't know you" if password is wrong
## display "Welcome!" if password is correct
#
require "./get_input.rb"

password = get_input("What is the password? ")

if password == "abc$123"
    puts "Welcome!"
else
    puts "I don't know you."
end