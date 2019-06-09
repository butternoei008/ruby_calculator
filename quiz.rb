class Question 
    attr_accessor :prompt, :answer
    def initialize(prompt, answer)
        @prompt = prompt
        @answer = answer
    end
end

quiz_1 = "What your name \n a.neoi \n b.noey \n c.butter \n d.fat"
quiz_2 = "Your oshi \n a.Noei \n b.Pun \n c.Music \n d.Jennis"
quiz_3 = "What do you favolit \n a.Play game \n b.Play guitar \n c.Coding \n d.Music production"
quiz_4 = "What do you like band \n a.Aimer \n b.TK \n c.One OK Rock \n d.papee plane"
quiz_5 = "What do you like song \n a.Kimi datara \n b.Kimi wa melody \n c.Kimi ga kurata \n d.Kimi no nawa"

quizs = [
    Question.new(quiz_1, "a"),
    Question.new(quiz_2, "b"),
    Question.new(quiz_3, "d"),
    Question.new(quiz_4, "a"),
    Question.new(quiz_5, "a")
]

def test_run(input_quiz)
    answer = ""
    score = 0
    for quiz in input_quiz
        puts quiz.prompt
        answer = gets.chomp()
        if(answer == quiz.answer)
            score += 1
        end 
    end
    puts "You score " + score.to_s + "/" + input_quiz.length().to_s
end

test_run(quizs)