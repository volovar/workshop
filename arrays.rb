number_array = [1,2,3,4]
string_array = [["Keith", "Matt"], ["Mike", "Colin"]]

puts number_array

string_array.each {|x| x.each {|y| puts y[0]}}