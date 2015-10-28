# starting this
class String
    def get_first_char
        self[0,1].upcase
    end
end

def find_next_path answer
    if answer.get_first_char == 'Y'
        true
    elsif answer.get_first_char == 'N'
        false
    end
end

def ask_question text
    print text
    answer = gets.chomp
end

first_answer = ask_question "Is the car silent when you turn the key? "

puts find_next_path(first_answer)