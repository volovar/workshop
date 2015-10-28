# starting this
QUESTIONS = [
    "Is the car silent when you turn the key? ",
    "Are the battery terminals corroded? ",
    "Does the car make a clicking noise? ",
    "Does the car crank up but fail to start? ",
    "Does the engine start and then die? ",
    "Does you car have fuel injection? "
]

TEST = {
    "piece_a"=> {
        "piece_a_a"=> "hi",
        "piece_a_b"=> "hello"
    }
}

ANSWERS = [
    "Clean terminals and try starting again.",
    "Replace the cables and try again.",
    "Replace the battery.",
    "Check spark plug connections.",
    "Check to ensure the choke is opening and closing.",
    "Get it in for service."
]

responses = []

class String
    def get_first_char
        self[0,1].upcase
    end
end

def find_next_path answer
    if answer.get_first_char == "Y"
        true
    elsif answer.get_first_char == "N"
        false
    end
end

def find_next_question response
    # if response

end

def ask_question text
    print text
    answer = gets.chomp
end

# responses[0] = find_next_path (ask_question QUESTIONS[0])

# responses[1] =
#     if responses[0]
#         find_next_path (ask_question QUESTIONS[1])
#     else
#         find_next_path (ask_question QUESTIONS[2])
#     end

# responses[2] =
#     if responses[1]
#         puts ANSWERS[0]
#     else
#         puts ANSWERS[1]
#     end

puts TEST["piece_a"]["piece_a_a"]