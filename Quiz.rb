class Question
     attr_accessor :prompt, :answer
     def initialize(prompt, answer)
          @prompt = prompt
          @answer = answer
     end
end

p1 = "Which of the following is an Open Source DBMS ?\n (a) MySQL \n (b) Microsoft SQL Server \n (c) Microsoft Access \n (d) Oracle "
p2 = "The Problem caused by independent multivalued dependencies is eliminated in which of the normal form ?\n (a) 3NF \n (b) BCNF \n (c) 4NF \n (d) 5NF" 
p3 = "Which is not the relational algebra operator? \n (a) Set difference \n (b) Cartesian product \n (c) Rename \n (d) Join "
p4 = "A transaction state changes from active to______, after the transaction has been rolled back and the database restored to its state prior to the start of the transaction. \n (a) Partially committed \n (b) Committed \n (c) Aborted \n (d) Failed "
questions = [
     Question.new(p1, "a"),
     Question.new(p2, "c"),
     Question.new(p3, "a"),
     Question.new(p4, "c"),
     
]

def run_quiz(questions)
     answer = ""
     score = 0
     for question in questions
          puts question.prompt
          answer = gets.chomp()
          if answer == question.answer
               score = score + 1
          end
     end
     puts "You got #{score} out of #{questions.length()}"
end

run_quiz(questions)
