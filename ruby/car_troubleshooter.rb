# start by asking a question
# based on user input, ask another question a or b
# continue asking questions until you reach a dead end (answer, no longer a question)
QUESTIONS = [
    "Is the car silent when you turn the key? ",
    "Are the battery terminals corroded? ",
    "Does the car make a clicking noise? ",
    "Does the car crank up but fail to start? ",
    "Does the engine start and then die? ",
    "Does you car have fuel injection? "
]

ANSWERS = [
    "Clean terminals and try starting again.",
    "Replace the cables and try again.",
    "Replace the battery.",
    "Check spark plug connections.",
    "Check to ensure the choke is opening and closing.",
    "Get it in for service."
]

class Question
    def initialize(question, answers)
        @question = question
        @response
        @answers = answers
    end

    def ask_question
        print @question
        @response = gets.chomp

        self.find_next_path
    end

    def find_next_path
        if @response.get_first_char == "Y"
            find_type(@answers[0])
        elsif @response.get_first_char == "N"
            if @answers[1]
                find_type(@answers[1])
            else
                puts "I'm sorry, I can't help you."
            end
        else
            puts "Please enter Yes or No"
            self.ask_question
        end
    end

    def find_type(answer)
        if answer.is_a?(Question)
            answer.ask_question
        else
            puts answer
        end
    end
end

class String
    def get_first_char
        self[0,1].upcase
    end
end

QSIX = Question.new(QUESTIONS[5], [ANSWERS[5], ANSWERS[4]])
QFIVE = Question.new(QUESTIONS[4], [QSIX])
QFOUR = Question.new(QUESTIONS[3], [ANSWERS[3], QFIVE])
QTHREE = Question.new(QUESTIONS[2], [ANSWERS[2], QFOUR])
QTWO = Question.new(QUESTIONS[1], [ANSWERS[0], ANSWERS[1]])
QONE = Question.new(QUESTIONS[0], [QTWO, QTHREE])

QONE.ask_question