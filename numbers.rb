print "What is the first number? "
num1 = gets.chomp

print "what is the second number? "
num2 = gets.chomp

num1_i = num1.to_i
num2_i = num2.to_i

added = num1_i + num2_i
subtracted = num1_i - num2_i
multiplied = num1_i * num2_i
divided = num1_i / num2_i

puts "#{num1} + #{num2} = #{added}"
puts "#{num1} - #{num2} = #{subtracted}"
puts "#{num1} * #{num2} = #{multiplied}"
puts "#{num1} / #{num2} = #{divided}"