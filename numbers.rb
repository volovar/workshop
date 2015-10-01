print "What is the first number? "
num1 = gets.chomp.to_i

print "what is the second number? "
num2 = gets.chomp.to_i

added = num1 + num2
subtracted = num1 - num2
multiplied = num1 * num2
divided = num1 / num2

puts "#{num1} + #{num2} = #{added}"
puts "#{num1} - #{num2} = #{subtracted}"
puts "#{num1} * #{num2} = #{multiplied}"
puts "#{num1} / #{num2} = #{divided}"