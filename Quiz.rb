class Question
     attr_accessor :prompt, :answer
     def initialize(prompt, answer)
          @prompt = prompt
          @answer = answer
     end
end

p1 = "Which of the following is an Open Source DBMS ?\n (a) MySQL \n (b) Microsoft SQL Server \n (c) Microsoft Access \$p2 = "The Problem caused by independent multivalued dependencies is eliminated in which of the normal form ?\n (a) 3NF $
questions = [
     Question.new(p1, "a"),
     Question.new(p2, "c")
]

def run_quiz(questions)
     answer = ""
     score = 0
     for question in questions
          puts question.prompt
          answer = gets.chomp()
          if answer == question.answer
               score += 1
          end
     end
     puts "You got #{score} out of #{questions.length()}"
end

run_quiz(questions)
