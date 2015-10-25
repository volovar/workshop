def comparison num_a, num_b
    num_a = num_a.to_i
    num_b = num_b.to_i

    if num_a > num_b
        return num_a
    elsif num_a < num_b
        return num_b
    else
        retun num_a
    end
end

numbers = []
i = 0
times = 3
which = ''

while i < times do
    if i == 0
        which = 'first'
    elsif i == 1
        which = 'second'
    elsif i == 2
        which = 'third'
    end

    print "Enter the #{which} number: "
    numbers.push(gets.chomp)

    i += 1
end

larger_num = comparison numbers[0], numbers[1]
largest_num = comparison larger_num, numbers[2]

puts "The largest number is #{largest_num}."